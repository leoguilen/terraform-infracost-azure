# Azure App Service Plan Module

resource "azurerm_app_service_plan" "plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind

  sku {
    tier = var.sku.tier
    size = var.sku.size
  }

  tags = var.tags
}
