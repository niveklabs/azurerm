module "azurerm_servicebus_namespace_authorization_rule" {
  source = "./azurerm/d/azurerm_servicebus_namespace_authorization_rule"

  name                = null
  namespace_name      = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
