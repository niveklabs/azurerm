module "azurerm_automation_variable_datetime" {
  source = "./azurerm/r/azurerm_automation_variable_datetime"

  automation_account_name = null
  description             = null
  encrypted               = null
  name                    = null
  resource_group_name     = null
  value                   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
