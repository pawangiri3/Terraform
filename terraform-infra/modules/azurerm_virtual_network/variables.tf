# variables.tf for module: azurerm_virtual_network

variable "vms" {
  type = map(object({
    vnet_name           = string
    adress_space        = list(string)
    location            = string
    resource_group_name = string
  }))
}





# variable "networks" {

#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     address_space       = list(string)
#     tags                = optional(map(string))
#     subnets = optional(list(object({
#       name             = string
#       address_prefixes = list(string)
#     })),[])
#   }))
# }