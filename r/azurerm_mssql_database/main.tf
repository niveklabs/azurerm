terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_mssql_database" "this" {
  auto_pause_delay_in_minutes = var.auto_pause_delay_in_minutes
  collation                   = var.collation
  create_mode                 = var.create_mode
  creation_source_database_id = var.creation_source_database_id
  elastic_pool_id             = var.elastic_pool_id
  license_type                = var.license_type
  max_size_gb                 = var.max_size_gb
  min_capacity                = var.min_capacity
  name                        = var.name
  read_replica_count          = var.read_replica_count
  read_scale                  = var.read_scale
  restore_point_in_time       = var.restore_point_in_time
  sample_name                 = var.sample_name
  server_id                   = var.server_id
  sku_name                    = var.sku_name
  tags                        = var.tags
  zone_redundant              = var.zone_redundant

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

