module "azurerm_eventhub_namespace_authorization_rule" {
  source = "./azurerm/r/azurerm_eventhub_namespace_authorization_rule"

  listen              = null
  manage              = null
  name                = null
  namespace_name      = null
  resource_group_name = null
  send                = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
