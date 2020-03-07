module "azurerm_monitor_activity_log_alert" {
  source = "./azurerm/r/azurerm_monitor_activity_log_alert"

  description         = null
  enabled             = null
  name                = null
  resource_group_name = null
  scopes              = []
  tags                = {}

  action = [{
    action_group_id    = null
    webhook_properties = {}
  }]

  criteria = [{
    caller            = null
    category          = null
    level             = null
    operation_name    = null
    resource_group    = null
    resource_id       = null
    resource_provider = null
    resource_type     = null
    status            = null
    sub_status        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
