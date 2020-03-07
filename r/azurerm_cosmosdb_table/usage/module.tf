module "azurerm_cosmosdb_table" {
  source = "./azurerm/r/azurerm_cosmosdb_table"

  account_name        = null
  name                = null
  resource_group_name = null
  throughput          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
