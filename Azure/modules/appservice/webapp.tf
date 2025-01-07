## App Service plan - Linux base webapp

resource "azurerm_service_plan" "webapp-plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

## Appservice - Webapplication - Linux

resource "azurerm_linux_web_app" "webappp-linux" {
  name                = var.webapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.webapp-plan.id

  site_config {
    always_on = false
    }
  }
}
