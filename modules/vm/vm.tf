## Network Interface
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  resource_group_name = var.resource_group_name
  location            = var.location
  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

## Virtual Mahcine - Windows
resource "azurerm_windows_virtual_machine" "vm-win" {
  name                  = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_ids = [azurerm_network_interface.nic.id]
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  size                  = var.size
  os_disk {
    storage_account_type = var.storage_account_type
    caching              = var.caching
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.vm_version
  }
  depends_on = [ azurerm_network_interface.nic ]
}