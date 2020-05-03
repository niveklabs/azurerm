module "azurerm_mssql_database" {
  source = "./modules/azurerm/r/azurerm_mssql_database"

  auto_pause_delay_in_minutes = null
  collation                   = null
  create_mode                 = null
  creation_source_database_id = null
  elastic_pool_id             = null
  license_type                = null
  max_size_gb                 = null
  min_capacity                = null
  name                        = null
  read_replica_count          = null
  read_scale                  = null
  restore_point_in_time       = null
  sample_name                 = null
  server_id                   = null
  sku_name                    = null
  tags                        = {}
  zone_redundant              = null

  threat_detection_policy = [{
    disabled_alerts            = []
    email_account_admins       = null
    email_addresses            = []
    retention_days             = null
    state                      = null
    storage_account_access_key = null
    storage_endpoint           = null
    use_server_default         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
