module "azurerm_netapp_snapshot" {
  source = "./azurerm/d/azurerm_netapp_snapshot"

  account_name        = null
  name                = null
  pool_name           = null
  resource_group_name = null
  volume_name         = null

  timeouts = [{
    read = null
  }]
}
