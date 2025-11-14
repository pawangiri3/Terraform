# main.tf for module: azurerm_resource_group
resource "azurerm_resource_group" "rgs" {

  for_each = var.vms
  name     = each.value.resource_group_name
  location = each.value.location
  tags     = each.value.tags

}
