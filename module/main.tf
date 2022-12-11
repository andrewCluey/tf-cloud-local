



locals {
  environment = var.environment
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.environment}-tfcloud"
  location = "uksouth"
}

