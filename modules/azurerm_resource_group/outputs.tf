output "id" {
  description = "Id of the created resource group"
  value       = azurerm_resource_group.rg.id
}

output "name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.rg.name
}