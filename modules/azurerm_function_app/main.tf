# Azure Function App Module

module "azurerm_storage_account" {
  source = "../azurerm_storage_account"

  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = var.tags
}

module "azurerm_app_service_plan" {
  source = "../azurerm_app_service_plan"

  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  kind                = "FunctionApp"

  sku = {
    tier = "Dynamic"
    size = "Y1"
  }

  tags = var.tags
}

resource "azurerm_function_app" "func" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = module.azurerm_app_service_plan.id
  storage_account_name       = module.azurerm_storage_account.name
  storage_account_access_key = module.azurerm_storage_account.primary_access_key
  https_only                 = true

  tags = var.tags

  depends_on = [
    module.azurerm_storage_account,
    module.azurerm_app_service_plan
  ]
}
