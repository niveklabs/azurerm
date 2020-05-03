module "azurerm_log_analytics_workspace" {
  source = "./modules/azurerm/d/azurerm_log_analytics_workspace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
