module "azurerm_netapp_pool" {
  source = "./modules/azurerm/d/azurerm_netapp_pool"

  account_name        = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
