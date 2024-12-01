## virtual Network

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  address_space       = var.address_space
  depends_on = [ azurerm_resource_group.rg ]
}

## Subnet

resource "azurerm_subnet" "snet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
  depends_on = [ azurerm_virtual_network.vnet, azurerm_resource_group.rg ]
}
