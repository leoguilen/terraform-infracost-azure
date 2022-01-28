output "name" {
  description = "The Name of the Storage Account"
  value       = azurerm_storage_account.sa.name
}

output "primary_access_key" {
  description = "The Primary Access Key of the Storage Account"
  value       = azurerm_storage_account.sa.primary_access_key
}
