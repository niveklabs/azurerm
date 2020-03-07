module "azurerm_monitor_diagnostic_setting" {
  source = "./azurerm/r/azurerm_monitor_diagnostic_setting"

  eventhub_authorization_rule_id = null
  eventhub_name                  = null
  log_analytics_destination_type = null
  log_analytics_workspace_id     = null
  name                           = null
  storage_account_id             = null
  target_resource_id             = null

  log = [{
    category = null
    enabled  = null
    retention_policy = [{
      days    = null
      enabled = null
    }]
  }]

  metric = [{
    category = null
    enabled  = null
    retention_policy = [{
      days    = null
      enabled = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
