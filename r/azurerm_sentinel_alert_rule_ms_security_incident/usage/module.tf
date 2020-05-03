module "azurerm_sentinel_alert_rule_ms_security_incident" {
  source = "./modules/azurerm/r/azurerm_sentinel_alert_rule_ms_security_incident"

  description                = null
  display_name               = null
  enabled                    = null
  log_analytics_workspace_id = null
  name                       = null
  product_filter             = null
  severity_filter            = []
  text_whitelist             = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
