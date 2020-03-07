module "azurerm_kusto_database_principal" {
  source = "./azurerm/r/azurerm_kusto_database_principal"

  client_id           = null
  cluster_name        = null
  database_name       = null
  object_id           = null
  resource_group_name = null
  role                = null
  type                = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
