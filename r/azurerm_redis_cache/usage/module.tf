module "azurerm_redis_cache" {
  source = "./azurerm/r/azurerm_redis_cache"

  capacity                  = null
  enable_non_ssl_port       = null
  family                    = null
  location                  = null
  minimum_tls_version       = null
  name                      = null
  private_static_ip_address = null
  resource_group_name       = null
  shard_count               = null
  sku_name                  = null
  subnet_id                 = null
  tags                      = {}
  zones                     = []

  patch_schedule = [{
    day_of_week    = null
    start_hour_utc = null
  }]

  redis_configuration = [{
    aof_backup_enabled              = null
    aof_storage_connection_string_0 = null
    aof_storage_connection_string_1 = null
    enable_authentication           = null
    maxclients                      = null
    maxfragmentationmemory_reserved = null
    maxmemory_delta                 = null
    maxmemory_policy                = null
    maxmemory_reserved              = null
    notify_keyspace_events          = null
    rdb_backup_enabled              = null
    rdb_backup_frequency            = null
    rdb_backup_max_snapshot_count   = null
    rdb_storage_connection_string   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
