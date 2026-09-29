terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.6.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "rg-statebk"
    storage_account_name = "ashustgstatebk"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

