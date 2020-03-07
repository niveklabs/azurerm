module "azurerm_monitor_log_profile" {
  source = "./azurerm/r/azurerm_monitor_log_profile"

  categories         = []
  locations          = []
  name               = null
  servicebus_rule_id = null
  storage_account_id = null

  retention_policy = [{
    days    = null
    enabled = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
