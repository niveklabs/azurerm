module "azurerm_sql_database" {
  source = "./modules/azurerm/r/azurerm_sql_database"

  collation                        = null
  create_mode                      = null
  edition                          = null
  elastic_pool_name                = null
  location                         = null
  max_size_bytes                   = null
  max_size_gb                      = null
  name                             = null
  read_scale                       = null
  requested_service_objective_id   = null
  requested_service_objective_name = null
  resource_group_name              = null
  restore_point_in_time            = null
  server_name                      = null
  source_database_deletion_date    = null
  source_database_id               = null
  tags                             = {}
  zone_redundant                   = null

  extended_auditing_policy = [{
    retention_in_days                       = null
    storage_account_access_key              = null
    storage_account_access_key_is_secondary = null
    storage_endpoint                        = null
  }]

  import = [{
    administrator_login          = null
    administrator_login_password = null
    authentication_type          = null
    operation_mode               = null
    storage_key                  = null
    storage_key_type             = null
    storage_uri                  = null
  }]

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
