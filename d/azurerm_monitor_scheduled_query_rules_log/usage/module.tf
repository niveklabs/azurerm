module "azurerm_monitor_scheduled_query_rules_log" {
  source = "./modules/azurerm/d/azurerm_monitor_scheduled_query_rules_log"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
