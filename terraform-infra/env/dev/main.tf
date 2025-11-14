# main.tf for dev environment

# Example module usage
module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}
