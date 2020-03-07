module "azurerm_data_lake_analytics_account" {
  source = "./azurerm/r/azurerm_data_lake_analytics_account"

  default_store_account_name = null
  location                   = null
  name                       = null
  resource_group_name        = null
  tags                       = {}
  tier                       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
