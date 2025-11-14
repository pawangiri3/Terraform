# providers.tf for dev environment
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "backendstorageaccount20"
    container_name       = "tfstate"
    key                  = "dev.tfvars"

  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    }

  subscription_id = "6dbc33a2-5da4-4090-8ac2-b8dde7d2a834"
}
