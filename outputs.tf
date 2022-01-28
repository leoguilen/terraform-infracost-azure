output "function_app_default_hostname" {
  description = "The default hostname associated with the Function App"
  value       = module.azurerm_function_app.default_hostname
}
