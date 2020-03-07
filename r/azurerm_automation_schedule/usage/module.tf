module "azurerm_automation_schedule" {
  source = "./azurerm/r/azurerm_automation_schedule"

  automation_account_name = null
  description             = null
  expiry_time             = null
  frequency               = null
  interval                = null
  month_days              = []
  name                    = null
  resource_group_name     = null
  start_time              = null
  timezone                = null
  week_days               = []

  monthly_occurrence = [{
    day        = null
    occurrence = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
