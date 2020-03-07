module "azurerm_api_management_logger" {
  source = "./azurerm/r/azurerm_api_management_logger"

  api_management_name = null
  buffered            = null
  description         = null
  name                = null
  resource_group_name = null

  application_insights = [{
    instrumentation_key = null
  }]

  eventhub = [{
    connection_string = null
    name              = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
