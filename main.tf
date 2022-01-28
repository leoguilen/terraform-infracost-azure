module "azurerm_resource_group" {
  source = "./modules/azurerm_resource_group"

  name     = var.rg_name
  location = var.location
  tags     = {}
  locking = {
    enabled    = false,
    lock_level = ""
  }
}

module "azurerm_function_app" {
  source = "./modules/azurerm_function_app"

  name                  = var.func_name
  location              = var.location
  resource_group_name   = module.azurerm_resource_group.name
  app_service_plan_name = var.plan_name
  storage_account_name  = var.sa_name
  tags                  = {}
}
