module "azurerm_cosmosdb_gremlin_graph" {
  source = "./azurerm/r/azurerm_cosmosdb_gremlin_graph"

  account_name        = null
  database_name       = null
  name                = null
  partition_key_path  = null
  resource_group_name = null
  throughput          = null

  conflict_resolution_policy = [{
    conflict_resolution_path      = null
    conflict_resolution_procedure = null
    mode                          = null
  }]

  index_policy = [{
    automatic      = null
    excluded_paths = []
    included_paths = []
    indexing_mode  = null
  }]

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
