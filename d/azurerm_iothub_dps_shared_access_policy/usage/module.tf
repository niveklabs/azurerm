module "azurerm_iothub_dps_shared_access_policy" {
  source = "./azurerm/d/azurerm_iothub_dps_shared_access_policy"

  iothub_dps_name     = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
