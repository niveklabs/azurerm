terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_redis_cache" "this" {
  capacity                  = var.capacity
  enable_non_ssl_port       = var.enable_non_ssl_port
  family                    = var.family
  location                  = var.location
  minimum_tls_version       = var.minimum_tls_version
  name                      = var.name
  private_static_ip_address = var.private_static_ip_address
  resource_group_name       = var.resource_group_name
  shard_count               = var.shard_count
  sku_name                  = var.sku_name
  subnet_id                 = var.subnet_id
  tags                      = var.tags
  zones                     = var.zones

  dynamic "patch_schedule" {
    for_each = var.patch_schedule
    content {
      day_of_week    = patch_schedule.value["day_of_week"]
      start_hour_utc = patch_schedule.value["start_hour_utc"]
    }
  }

  dynamic "redis_configuration" {
    for_each = var.redis_configuration
    content {
      aof_backup_enabled              = redis_configuration.value["aof_backup_enabled"]
      aof_storage_connection_string_0 = redis_configuration.value["aof_storage_connection_string_0"]
      aof_storage_connection_string_1 = redis_configuration.value["aof_storage_connection_string_1"]
      enable_authentication           = redis_configuration.value["enable_authentication"]
      maxfragmentationmemory_reserved = redis_configuration.value["maxfragmentationmemory_reserved"]
      maxmemory_delta                 = redis_configuration.value["maxmemory_delta"]
      maxmemory_policy                = redis_configuration.value["maxmemory_policy"]
      maxmemory_reserved              = redis_configuration.value["maxmemory_reserved"]
      notify_keyspace_events          = redis_configuration.value["notify_keyspace_events"]
      rdb_backup_enabled              = redis_configuration.value["rdb_backup_enabled"]
      rdb_backup_frequency            = redis_configuration.value["rdb_backup_frequency"]
      rdb_backup_max_snapshot_count   = redis_configuration.value["rdb_backup_max_snapshot_count"]
      rdb_storage_connection_string   = redis_configuration.value["rdb_storage_connection_string"]
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

