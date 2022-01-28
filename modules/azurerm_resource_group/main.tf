# Azure Resource Group Module

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "rg_locking" {
  count      = var.locking.enabled ? 1 : 0
  name       = "${var.name}-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.locking.lock_level
  notes      = "This Resource Group is Read-Only"
}