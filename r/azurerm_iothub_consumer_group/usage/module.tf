module "azurerm_iothub_consumer_group" {
  source = "./azurerm/r/azurerm_iothub_consumer_group"

  eventhub_endpoint_name = null
  iothub_name            = null
  name                   = null
  resource_group_name    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
