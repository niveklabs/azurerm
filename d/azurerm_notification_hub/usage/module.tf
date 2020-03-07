module "azurerm_notification_hub" {
  source = "./azurerm/d/azurerm_notification_hub"

  name                = null
  namespace_name      = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
