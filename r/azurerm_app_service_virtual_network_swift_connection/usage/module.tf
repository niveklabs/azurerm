module "azurerm_app_service_virtual_network_swift_connection" {
  source = "./azurerm/r/azurerm_app_service_virtual_network_swift_connection"

  app_service_id = null
  subnet_id      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
