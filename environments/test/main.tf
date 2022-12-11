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


module "test" {
    source = "../../module"

    environment = "test"
  
}