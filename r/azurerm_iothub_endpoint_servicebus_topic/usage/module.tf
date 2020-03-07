module "azurerm_iothub_endpoint_servicebus_topic" {
  source = "./azurerm/r/azurerm_iothub_endpoint_servicebus_topic"

  connection_string   = null
  iothub_name         = null
  name                = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
