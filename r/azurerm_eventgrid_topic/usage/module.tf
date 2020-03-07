module "azurerm_eventgrid_topic" {
  source = "./azurerm/r/azurerm_eventgrid_topic"

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
