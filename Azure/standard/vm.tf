# ## Network Interface - Virtual machine

# resource "azurerm_network_interface" "nic" {
#   name                = var.nic_name
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = var.location
#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.snet.id
#     private_ip_address_allocation = var.private_ip_address_allocation
#   }
#   depends_on = [ azurerm_resource_group.rg, azurerm_subnet.snet ]
# }

# ## Virtual machine

# resource "azurerm_windows_virtual_machine" "vm" {
#   name                  = var.vm_name
#   resource_group_name   = azurerm_resource_group.rg.name
#   location              = var.location
#   network_interface_ids = [azurerm_network_interface.nic.id]
#   admin_username        = var.admin_username
#   admin_password        = var.admin_password
#   size                  = var.size
#   os_disk {
#     storage_account_type = var.storage_account_type
#     caching              = var.caching
#   }
#   source_image_reference {
#     publisher = var.publisher
#     offer     = var.offer
#     sku       = var.sku
#     version   = "latest"
#   }
#   depends_on = [ azurerm_resource_group.rg, azurerm_network_interface.nic ]
# }