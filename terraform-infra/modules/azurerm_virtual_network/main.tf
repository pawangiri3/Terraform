# main.tf for module: azurerm_virtual_network
resource "azurerm_virtual_network" "vnet" {
  for_each = var.vms
  name                = each.value.vnet_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}




# resource "azurerm_virtual_network" "virtual_networks" {
#   for_each = var.networks

#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   address_space       = each.value.address_space
#   tags                = each.value.tags

#   dynamic "subnet" {
#     for_each = each.value.subnets
#     content {
#       name             = subnet.value.name
#       address_prefixes = subnet.value.address_prefixes
#     }
#   }
# }