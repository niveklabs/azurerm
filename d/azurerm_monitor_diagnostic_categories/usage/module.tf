module "azurerm_monitor_diagnostic_categories" {
  source = "./modules/azurerm/d/azurerm_monitor_diagnostic_categories"

  resource_id = null

  timeouts = [{
    read = null
  }]
}
