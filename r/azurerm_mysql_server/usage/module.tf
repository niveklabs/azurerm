module "azurerm_mysql_server" {
  source = "./azurerm/r/azurerm_mysql_server"

  administrator_login          = null
  administrator_login_password = null
  location                     = null
  name                         = null
  resource_group_name          = null
  sku_name                     = null
  ssl_enforcement              = null
  tags                         = {}
  version                      = null

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
