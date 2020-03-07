module "azurerm_netapp_pool" {
  source = "./azurerm/r/azurerm_netapp_pool"

  account_name        = null
  location            = null
  name                = null
  resource_group_name = null
  service_level       = null
  size_in_tb          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
