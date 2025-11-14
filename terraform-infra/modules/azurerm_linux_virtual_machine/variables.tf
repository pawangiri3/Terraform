# variables.tf for module: azurerm_linux_virtual_machine

variable "vms" {
  type = map(object(
    {
      nic_name               = string
      location               = string
      resource_group_name    = string
      subnet_name            = string
      pip_name               = string
      vm_name                = string
      size                   = string
      admin_username         = string
      admin_password         = string
      source_image_reference = map(string)
    }
  ))
}
