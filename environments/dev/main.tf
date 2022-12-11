terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.35.0"
    }
  }
}

provider "azurerm" {
  features {}
}


module "dev" {
    source = "../../module"

    environment = "dev"
    soft_delete_retention_days = 7
}