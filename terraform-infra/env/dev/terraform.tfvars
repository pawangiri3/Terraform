vms = {
  vm1 = {
    resource_group = {
      name     = "dev-rg-pipelinewala-1"
      location = "korea central"
      tags = {
        environment = "dev"
        project     = "project-terraformcode"
      }
    }

    network = {
      vnet_name   = "vnet-pipelinewala-dev-todoapp-01"
      subnet_name = "frontend-subnet"
      nic_name    = "nic-frontend-vm-01"
      pip_name    = "pip-pipelinewala-dev-todoapp-01"
    }

    vm = {
      name = "frontend-vm"
      size = "Standard_B1s"
    }

    key_vault = {
      name                        = "prod-kv-01"
      enabled_for_disk_encryption = true
      soft_delete_retention_days  = 7
      purge_protection_enabled    = true
      sku_name                    = "standard"

      access_policies = [
        {
          tenant_id           = "96ceb0b6-7eea-404f-9b4c-e333bab1b450"
          object_id           = "737ca08c-05f2-4d19-991c-95d29b831e4e"
          key_permissions     = ["Get", "List"]
          secret_permissions  = ["Get", "List"]
          storage_permissions = ["Get"]
        }
      ]
    }

    image = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
    rg2 = {
      resource_group_name = "dev-rg-2"
      location            = "West US"
      tags = {
        environment = "lab"
        project     = "project-terraformcode"
      }
    }
}
