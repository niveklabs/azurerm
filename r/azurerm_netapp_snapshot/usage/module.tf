module "azurerm_netapp_snapshot" {
  source = "./azurerm/r/azurerm_netapp_snapshot"

  account_name        = null
  location            = null
  name                = null
  pool_name           = null
  resource_group_name = null
  volume_name         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
