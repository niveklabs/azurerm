module "azurerm_postgresql_database" {
  source = "./azurerm/r/azurerm_postgresql_database"

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
