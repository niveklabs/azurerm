module "azurerm_app_service_custom_hostname_binding" {
  source = "./azurerm/r/azurerm_app_service_custom_hostname_binding"

  app_service_name    = null
  hostname            = null
  resource_group_name = null
  ssl_state           = null
  thumbprint          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
