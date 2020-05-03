module "azurerm_network_watcher" {
  source = "./modules/azurerm/d/azurerm_network_watcher"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
