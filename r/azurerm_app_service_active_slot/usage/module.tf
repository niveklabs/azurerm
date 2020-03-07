module "azurerm_app_service_active_slot" {
  source = "./azurerm/r/azurerm_app_service_active_slot"

  app_service_name      = null
  app_service_slot_name = null
  resource_group_name   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
