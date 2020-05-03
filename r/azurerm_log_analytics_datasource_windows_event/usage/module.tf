module "azurerm_log_analytics_datasource_windows_event" {
  source = "./modules/azurerm/r/azurerm_log_analytics_datasource_windows_event"

  event_log_name      = null
  event_types         = []
  name                = null
  resource_group_name = null
  workspace_name      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
