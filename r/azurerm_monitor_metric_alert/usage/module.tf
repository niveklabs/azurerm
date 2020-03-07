module "azurerm_monitor_metric_alert" {
  source = "./azurerm/r/azurerm_monitor_metric_alert"

  auto_mitigate       = null
  description         = null
  enabled             = null
  frequency           = null
  name                = null
  resource_group_name = null
  scopes              = []
  severity            = null
  tags                = {}
  window_size         = null

  action = [{
    action_group_id    = null
    webhook_properties = {}
  }]

  criteria = [{
    aggregation = null
    dimension = [{
      name     = null
      operator = null
      values   = []
    }]
    metric_name      = null
    metric_namespace = null
    operator         = null
    threshold        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
