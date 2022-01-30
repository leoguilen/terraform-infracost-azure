# Defines the name to use for this function app
func_name = "tffunctionappdev"

# Defines the location to use for all resources
location = "brazilsouth"

# Defines the name to use for app service plan associated with this function app
plan_name = "tfappserviceplandev"

# Name of the resource group to be created
rg_name = "tfresourcegroupdev"

# The backend storage account name which will be used by this Function App
sa_name = "tfbackstorageaccountdev"

# Defines the tags to set for all resources
default_tags = {
  environment = "development"
  created_by  = "terraform ci/cd pipeline"
}
