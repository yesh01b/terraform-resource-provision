output "azurerm_virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}
output "subnet_id" {
  value = azurerm_subnet.subnet.id
}