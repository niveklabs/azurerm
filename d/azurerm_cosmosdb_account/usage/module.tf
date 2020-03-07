module "azurerm_cosmosdb_account" {
  source = "./azurerm/d/azurerm_cosmosdb_account"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
