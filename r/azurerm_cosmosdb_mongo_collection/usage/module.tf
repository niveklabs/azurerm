module "azurerm_cosmosdb_mongo_collection" {
  source = "./azurerm/r/azurerm_cosmosdb_mongo_collection"

  account_name        = null
  database_name       = null
  default_ttl_seconds = null
  name                = null
  resource_group_name = null
  shard_key           = null
  throughput          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
