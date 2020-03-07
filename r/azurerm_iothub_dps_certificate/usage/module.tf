module "azurerm_iothub_dps_certificate" {
  source = "./azurerm/r/azurerm_iothub_dps_certificate"

  certificate_content = null
  iot_dps_name        = null
  name                = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
