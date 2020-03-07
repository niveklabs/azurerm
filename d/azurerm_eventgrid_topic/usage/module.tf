module "azurerm_eventgrid_topic" {
  source = "./azurerm/d/azurerm_eventgrid_topic"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
