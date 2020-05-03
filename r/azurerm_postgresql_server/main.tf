terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_postgresql_server" "this" {
  administrator_login               = var.administrator_login
  administrator_login_password      = var.administrator_login_password
  auto_grow_enabled                 = var.auto_grow_enabled
  backup_retention_days             = var.backup_retention_days
  create_mode                       = var.create_mode
  creation_source_server_id         = var.creation_source_server_id
  geo_redundant_backup_enabled      = var.geo_redundant_backup_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  location                          = var.location
  name                              = var.name
  public_network_access_enabled     = var.public_network_access_enabled
  resource_group_name               = var.resource_group_name
  restore_point_in_time             = var.restore_point_in_time
  sku_name                          = var.sku_name
  ssl_enforcement                   = var.ssl_enforcement
  ssl_enforcement_enabled           = var.ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls_version_enforced
  storage_mb                        = var.storage_mb
  tags                              = var.tags
  version                           = var.version

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

