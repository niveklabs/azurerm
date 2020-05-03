module "azurerm_automation_variable_int" {
  source = "./modules/azurerm/d/azurerm_automation_variable_int"

  automation_account_name = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    read = null
  }]
}
