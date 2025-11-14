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
  features {}
  subscription_id = "6dbc33a2-5da4-4090-8ac2-b8dde7d2a834"
}
