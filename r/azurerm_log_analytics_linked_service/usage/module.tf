module "azurerm_log_analytics_linked_service" {
  source = "./azurerm/r/azurerm_log_analytics_linked_service"

  linked_service_name = null
  resource_group_name = null
  resource_id         = null
  tags                = {}
  workspace_name      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
