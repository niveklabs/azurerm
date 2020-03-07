module "azurerm_automation_variable_string" {
  source = "./azurerm/d/azurerm_automation_variable_string"

  automation_account_name = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    read = null
  }]
}
