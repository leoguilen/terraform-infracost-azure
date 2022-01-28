output "default_hostname" {
  description = "The default hostname associated with the Function App"
  value       = azurerm_function_app.func.default_hostname
}
