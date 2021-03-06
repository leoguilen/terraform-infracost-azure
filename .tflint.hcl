config {
  module = true
  force = false
  disabled_by_default = false

  varfile = ["./environments/dev/dev.tfvars"]
}

# plugin "azurerm" {
#     enabled = true
#     version = "0.14.0"
#     source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
# }

rule "terraform_naming_convention" {
  enabled = true
  format = "snake_case"
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_unused_required_providers" {
  enabled = true
}