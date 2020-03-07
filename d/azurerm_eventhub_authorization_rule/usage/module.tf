module "azurerm_eventhub_authorization_rule" {
  source = "./azurerm/d/azurerm_eventhub_authorization_rule"

  eventhub_name       = null
  listen              = null
  manage              = null
  name                = null
  namespace_name      = null
  resource_group_name = null
  send                = null

  timeouts = [{
    read = null
  }]
}
