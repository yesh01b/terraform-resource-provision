## Resource group
module "rg" {
  source              = "../../modules/rg"
  resource_group_name = "rg-dev"
  location            = "uksouth"
  env                 = "dev"
}

## Networking

module "network" {
  source               = "../../modules/network"
  resource_group_name  = module.rg.resource_group_name
  location             = "uksouth"
  virtual_network_name = "vnet-dev"
  subnet_name          = "snet-dev"
  address_space        = ["10.0.0.0/24"]
  address_prefixes     = ["10.0.0.0/26"]
  depends_on           = [module.rg]
}

## Virtual Machine - Windows

module "vm" {
  source              = "../../modules/vm"
  resource_group_name = module.rg.resource_group_name
  location            = "uksouth"
  nic_name            = "vm-nic-dev"
  vm_name             = "vmdev01"
  subnet_id           = module.network.subnet_id
  depends_on          = [module.rg, module.network]
}

## Virtual machine - multiple

module "vm_multiple" {
  source = "../../modules/vm-multiple"
  virtual_machines = {
    vm1 = {
      nic_name                      = "vmdev-nic"
      resource_group_name           = module.rg.resource_group_name
      ip_configuration_name         = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_id                     = module.network.subnet_id
      location                      = "uksouth"
      vm_name                       = "vmdev01"
      size                          = "Standard_DS1_V2"
      admin_username                = "vmadminuser"
      admin_password                = "123456789B@"
      storage_account_type          = "Standard_LRS"
      caching                       = "ReadWrite"
      publisher                     = "MicrosoftWindowsServer"
      offer                         = "WindowsServer"
      sku                           = "2019-DataCenter"
      vm_version                    = "latest"
    }
    vm2 = {
      nic_name                      = "vmtest-nic"
      resource_group_name           = module.rg.resource_group_name
      ip_configuration_name         = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_id                     = module.network.subnet_id
      location                      = "uksouth"
      vm_name                       = "vmtest01"
      size                          = "Standard_DS1_V2"
      admin_username                = "vmadminuser"
      admin_password                = "123456789B@"
      storage_account_type          = "Standard_LRS"
      caching                       = "ReadWrite"
      publisher                     = "MicrosoftWindowsServer"
      offer                         = "WindowsServer"
      sku                           = "2019-DataCenter"
      vm_version                    = "latest"
    }
  }
}