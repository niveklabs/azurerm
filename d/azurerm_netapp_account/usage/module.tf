module "azurerm_netapp_account" {
  source = "./azurerm/d/azurerm_netapp_account"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
