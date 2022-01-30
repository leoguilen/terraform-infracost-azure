variable "name" {
  description = "Defines the name to use for this app service plan"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the app service plan"
  type        = string
}

variable "location" {
  description = "Defines the location to use for this app service plan"
  type        = string
}

variable "kind" {
  description = "Defines the kind to use for this app service plan"
  type        = string
  default     = "FunctionApp"
}

variable "sku" {
  description = "Defines the plan's info to use for this app service plan"
  type = object({
    tier = string
    size = string
  })
  default = {
    tier = "Dynamic"
    size = "Y1"
  }
}

variable "tags" {
  description = "Defines the tags to use for this app service plan"
  type        = any
  default     = null
}
