module "azurerm_iothub_endpoint_eventhub" {
  source = "./azurerm/r/azurerm_iothub_endpoint_eventhub"

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
