module "azurerm_notification_hub_namespace" {
  source = "./modules/azurerm/d/azurerm_notification_hub_namespace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
