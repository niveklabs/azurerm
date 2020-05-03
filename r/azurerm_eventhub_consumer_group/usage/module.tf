module "azurerm_eventhub_consumer_group" {
  source = "./modules/azurerm/r/azurerm_eventhub_consumer_group"

  eventhub_name       = null
  name                = null
  namespace_name      = null
  resource_group_name = null
  user_metadata       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
