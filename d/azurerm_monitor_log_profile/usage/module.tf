module "azurerm_monitor_log_profile" {
  source = "./modules/azurerm/d/azurerm_monitor_log_profile"

  name = null

  timeouts = [{
    read = null
  }]
}
