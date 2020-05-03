module "azurerm_mssql_database" {
  source = "./modules/azurerm/d/azurerm_mssql_database"

  name      = null
  server_id = null

  timeouts = [{
    read = null
  }]
}
