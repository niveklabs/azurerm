module "azurerm_netapp_volume" {
  source = "./azurerm/d/azurerm_netapp_volume"

  account_name        = null
  name                = null
  pool_name           = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
