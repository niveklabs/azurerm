module "azurerm_eventhub_consumer_group" {
  source = "./azurerm/d/azurerm_eventhub_consumer_group"

  eventhub_name       = null
  name                = null
  namespace_name      = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
