variable "name" {
  description = "Defines the name to use for this function app"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the function app"
  type        = string
}

variable "location" {
  description = "Defines the location to use for this function app"
  type        = string
}

variable "app_service_plan_name" {
  description = "Defines the name to use for app service plan associated with this function app"
  type        = string
}

variable "storage_account_name" {
  description = "The backend storage account name which will be used by this Function App"
  type        = string
}

variable "tags" {
  description = "Defines the tags to use for this function app"
  type        = any
  default     = null
}
