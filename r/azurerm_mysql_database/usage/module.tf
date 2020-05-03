module "azurerm_mysql_database" {
  source = "./modules/azurerm/r/azurerm_mysql_database"

  charset             = null
  collation           = null
  name                = null
  resource_group_name = null
  server_name         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
