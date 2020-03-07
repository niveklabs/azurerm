module "azurerm_notification_hub_namespace" {
  source = "./azurerm/r/azurerm_notification_hub_namespace"

  enabled             = null
  location            = null
  name                = null
  namespace_type      = null
  resource_group_name = null
  sku_name            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
