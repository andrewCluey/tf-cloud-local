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



locals {
  environment = var.environment
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.environment}-tfcloud"
  location = "uksouth"
}

