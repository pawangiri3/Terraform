# main.tf for dev environment

# Example module usage
module "rg" {
  source = "../../modules/azurerm_resource_group"
  vms    = var.vms
}


module "vms" {
  source = "../../modules/azurerm_linux_virtual_machine"
  vms = var.vms
  
}

module "key_vaults" {
  source = "../../modules/azurerm_key_vault"
  vms = var.vms
}

module "subnet" {
  source = "../../modules/azurerm_subnet"
  vms = var.vms
}
module "vnet" {
  source = "../../modules/azurerm_virtual_network"
  vms =var.vms
  
}
module "pip" {
  source = "../../modules/azurerm_public_ip"
  vms = var.vms
  
}