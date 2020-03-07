module "azurerm_cosmosdb_sql_container" {
  source = "./azurerm/r/azurerm_cosmosdb_sql_container"

  account_name        = null
  database_name       = null
  default_ttl         = null
  name                = null
  partition_key_path  = null
  resource_group_name = null
  throughput          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  unique_key = [{
    paths = []
  }]
}
