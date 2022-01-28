variable "name" {
  description = "Name of the resource group to be created"
  type        = string
}

variable "location" {
  description = "Location of the resource group to be created"
  type        = string
}

variable "tags" {
  description = "Tags included in the resource group"
  type        = any
  default     = null
}

variable "locking" {
  description = "Resource group lock information"
  type = object({
    enabled    = bool,
    lock_level = string
  })
  default = {
    enabled    = false,
    lock_level = ""
  }
}