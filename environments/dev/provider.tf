terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.6.0"
    }

  }
  backend "azurerm" {
      resource_group_name  = "rg-terraform-state"
      storage_account_name = "stterraformstate"
      container_name       = "tfstate"
      key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

