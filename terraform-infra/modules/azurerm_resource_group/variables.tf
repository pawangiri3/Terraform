# variables.tf for module: azurerm_resource_group

variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags = map(string)}
   
  ))
  }

