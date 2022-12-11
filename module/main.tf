
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.environment}-tfcloud"
  location = "uksouth"
}


data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "main" {
  name                        = "kv-${var.environment}-01"
  location                    = azurerm_resource_group.main.location
  resource_group_name         = azurerm_resource_group.main.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = false
  sku_name                    = "standard"
}