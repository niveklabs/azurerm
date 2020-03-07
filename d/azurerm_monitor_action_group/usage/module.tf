module "azurerm_monitor_action_group" {
  source = "./azurerm/d/azurerm_monitor_action_group"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
