module "azurerm_postgresql_server" {
  source = "./modules/azurerm/r/azurerm_postgresql_server"

  administrator_login               = null
  administrator_login_password      = null
  auto_grow_enabled                 = null
  backup_retention_days             = null
  create_mode                       = null
  creation_source_server_id         = null
  geo_redundant_backup_enabled      = null
  infrastructure_encryption_enabled = null
  location                          = null
  name                              = null
  public_network_access_enabled     = null
  resource_group_name               = null
  restore_point_in_time             = null
  sku_name                          = null
  ssl_enforcement                   = null
  ssl_enforcement_enabled           = null
  ssl_minimal_tls_version_enforced  = null
  storage_mb                        = null
  tags                              = {}
  version                           = null

  storage_profile = [{
    auto_grow             = null
    backup_retention_days = null
    geo_redundant_backup  = null
    storage_mb            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
