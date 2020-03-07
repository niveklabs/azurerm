terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_mariadb_server" "this" {
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  location                     = var.location
  name                         = var.name
  resource_group_name          = var.resource_group_name
  sku_name                     = var.sku_name
  ssl_enforcement              = var.ssl_enforcement
  tags                         = var.tags
  version                      = var.version

  dynamic "storage_profile" {
    for_each = var.storage_profile
    content {
      auto_grow             = storage_profile.value["auto_grow"]
      backup_retention_days = storage_profile.value["backup_retention_days"]
      geo_redundant_backup  = storage_profile.value["geo_redundant_backup"]
      storage_mb            = storage_profile.value["storage_mb"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

