module "azurerm_log_analytics_workspace" {
  source = "./azurerm/r/azurerm_log_analytics_workspace"

  location            = null
  name                = null
  resource_group_name = null
  retention_in_days   = null
  sku                 = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
