module "azurerm_monitor_scheduled_query_rules_alert" {
  source = "./modules/azurerm/r/azurerm_monitor_scheduled_query_rules_alert"

  authorized_resource_ids = []
  data_source_id          = null
  description             = null
  enabled                 = null
  frequency               = null
  location                = null
  name                    = null
  query                   = null
  query_type              = null
  resource_group_name     = null
  severity                = null
  tags                    = {}
  throttling              = null
  time_window             = null

  action = [{
    action_group           = []
    custom_webhook_payload = null
    email_subject          = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  trigger = [{
    metric_trigger = [{
      metric_column       = null
      metric_trigger_type = null
      operator            = null
      threshold           = null
    }]
    operator  = null
    threshold = null
  }]
}
