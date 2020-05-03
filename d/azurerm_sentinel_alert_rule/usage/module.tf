module "azurerm_sentinel_alert_rule" {
  source = "./modules/azurerm/d/azurerm_sentinel_alert_rule"

  log_analytics_workspace_id = null
  name                       = null

  timeouts = [{
    read = null
  }]
}
