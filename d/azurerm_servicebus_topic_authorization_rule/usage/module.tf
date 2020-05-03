module "azurerm_servicebus_topic_authorization_rule" {
  source = "./modules/azurerm/d/azurerm_servicebus_topic_authorization_rule"

  name                = null
  namespace_name      = null
  resource_group_name = null
  topic_name          = null

  timeouts = [{
    read = null
  }]
}
