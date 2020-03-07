module "azurerm_servicebus_topic_authorization_rule" {
  source = "./azurerm/r/azurerm_servicebus_topic_authorization_rule"

  listen              = null
  manage              = null
  name                = null
  namespace_name      = null
  resource_group_name = null
  send                = null
  topic_name          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
