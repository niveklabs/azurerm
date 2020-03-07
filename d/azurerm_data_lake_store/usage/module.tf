module "azurerm_data_lake_store" {
  source = "./azurerm/d/azurerm_data_lake_store"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
