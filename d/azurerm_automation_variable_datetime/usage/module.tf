module "azurerm_automation_variable_datetime" {
  source = "./modules/azurerm/d/azurerm_automation_variable_datetime"

  automation_account_name = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    read = null
  }]
}
