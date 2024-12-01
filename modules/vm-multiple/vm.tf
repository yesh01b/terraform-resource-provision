## Windows Virtual Machine - Multiple

## Network Interface

resource "azurerm_network_interface" "nic" {
  for_each            = var.virtual_machines
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  ip_configuration {
    name                          = each.value.ip_configuration_name
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}

## Virtual Machine

resource "azurerm_windows_virtual_machine" "vm" {
  for_each              = var.virtual_machines
  name                  = each.value.vm_name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  network_interface_ids = [azurerm_network_interface.nic[each.key].id]
  size                  = each.value.size
  admin_username        = each.value.admin_username
  admin_password        = each.value.admin_password
  os_disk {
    storage_account_type = each.value.storage_account_type
    caching              = each.value.caching
  }
  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.vm_version
  }
  depends_on = [azurerm_network_interface.nic]
}