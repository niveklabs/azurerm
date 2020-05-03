module "azurerm_kusto_cluster" {
  source = "./modules/azurerm/d/azurerm_kusto_cluster"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
