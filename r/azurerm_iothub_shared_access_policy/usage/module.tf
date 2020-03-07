module "azurerm_iothub_shared_access_policy" {
  source = "./azurerm/r/azurerm_iothub_shared_access_policy"

  device_connect      = null
  iothub_name         = null
  name                = null
  registry_read       = null
  registry_write      = null
  resource_group_name = null
  service_connect     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
