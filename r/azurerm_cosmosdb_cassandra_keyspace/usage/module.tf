module "azurerm_cosmosdb_cassandra_keyspace" {
  source = "./azurerm/r/azurerm_cosmosdb_cassandra_keyspace"

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
