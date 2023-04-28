terraform {
  required_version = ">= 1.3"

  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = ">= 1.4.0, < 2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.51.0, < 4.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.1"
    }
  }

  backend "azurerm" {
    resource_group_name = "ahsaccv3-tfstates-rg"
    storage_account_name = "ahsaccv3strgaccpoc"
    container_name = "tfstates"
    key = "dev-terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}