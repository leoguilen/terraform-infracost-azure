# ------------------ #
# GENERAL VARIABLES  #
# ------------------ #
variable "location" {
  description = "Defines the location to use for all resources"
  type        = string
}

# ------------------------- #
# RESOURCE GROUP VARIABLES  #
# ------------------------- #
variable "rg_name" {
  description = "Name of the resource group to be created"
  type        = string
}

# ----------------------- #
# FUNCTION APP VARIABLES  #
# ----------------------- #
variable "func_name" {
  description = "Defines the name to use for this function app"
  type        = string
}

variable "plan_name" {
  description = "Defines the name to use for app service plan associated with this function app"
  type        = string
}

variable "sa_name" {
  description = "The backend storage account name which will be used by this Function App"
  type        = string
}
