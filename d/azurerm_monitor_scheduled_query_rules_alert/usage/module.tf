module "azurerm_monitor_scheduled_query_rules_alert" {
  source = "./modules/azurerm/d/azurerm_monitor_scheduled_query_rules_alert"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
