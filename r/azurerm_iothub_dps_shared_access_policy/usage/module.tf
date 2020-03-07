module "azurerm_iothub_dps_shared_access_policy" {
  source = "./azurerm/r/azurerm_iothub_dps_shared_access_policy"

  enrollment_read     = null
  enrollment_write    = null
  iothub_dps_name     = null
  name                = null
  registration_read   = null
  registration_write  = null
  resource_group_name = null
  service_config      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
