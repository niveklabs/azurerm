module "azurerm_iothub_fallback_route" {
  source = "./azurerm/r/azurerm_iothub_fallback_route"

  condition           = null
  enabled             = null
  endpoint_names      = []
  iothub_name         = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
