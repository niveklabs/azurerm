module "azurerm_dev_test_schedule" {
  source = "./azurerm/r/azurerm_dev_test_schedule"

  lab_name            = null
  location            = null
  name                = null
  resource_group_name = null
  status              = null
  tags                = {}
  task_type           = null
  time_zone_id        = null

  daily_recurrence = [{
    time = null
  }]

  hourly_recurrence = [{
    minute = null
  }]

  notification_settings = [{
    status          = null
    time_in_minutes = null
    webhook_url     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  weekly_recurrence = [{
    time      = null
    week_days = []
  }]
}
