module "azurerm_kusto_database" {
  source = "./azurerm/r/azurerm_kusto_database"

  cluster_name        = null
  hot_cache_period    = null
  location            = null
  name                = null
  resource_group_name = null
  soft_delete_period  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
