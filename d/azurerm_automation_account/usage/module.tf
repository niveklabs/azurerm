module "azurerm_automation_account" {
  source = "./azurerm/d/azurerm_automation_account"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
