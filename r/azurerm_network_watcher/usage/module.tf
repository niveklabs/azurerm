module "azurerm_network_watcher" {
  source = "./azurerm/r/azurerm_network_watcher"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
