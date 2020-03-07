module "azurerm_monitor_autoscale_setting" {
  source = "./azurerm/r/azurerm_monitor_autoscale_setting"

  enabled             = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}
  target_resource_id  = null

  notification = [{
    email = [{
      custom_emails                         = []
      send_to_subscription_administrator    = null
      send_to_subscription_co_administrator = null
    }]
    webhook = [{
      properties  = {}
      service_uri = null
    }]
  }]

  profile = [{
    capacity = [{
      default = null
      maximum = null
      minimum = null
    }]
    fixed_date = [{
      end      = null
      start    = null
      timezone = null
    }]
    name = null
    recurrence = [{
      days     = []
      hours    = []
      minutes  = []
      timezone = null
    }]
    rule = [{
      metric_trigger = [{
        metric_name        = null
        metric_resource_id = null
        operator           = null
        statistic          = null
        threshold          = null
        time_aggregation   = null
        time_grain         = null
        time_window        = null
      }]
      scale_action = [{
        cooldown  = null
        direction = null
        type      = null
        value     = null
      }]
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
