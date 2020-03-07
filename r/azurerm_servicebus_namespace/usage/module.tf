module "azurerm_servicebus_namespace" {
  source = "./azurerm/r/azurerm_servicebus_namespace"

  capacity            = null
  location            = null
  name                = null
  resource_group_name = null
  sku                 = null
  tags                = {}
  zone_redundant      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
