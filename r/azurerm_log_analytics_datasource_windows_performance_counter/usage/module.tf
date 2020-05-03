module "azurerm_log_analytics_datasource_windows_performance_counter" {
  source = "./modules/azurerm/r/azurerm_log_analytics_datasource_windows_performance_counter"

  counter_name        = null
  instance_name       = null
  interval_seconds    = null
  name                = null
  object_name         = null
  resource_group_name = null
  workspace_name      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
