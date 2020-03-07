module "azurerm_relay_namespace" {
  source = "./azurerm/r/azurerm_relay_namespace"

  location            = null
  name                = null
  resource_group_name = null
  sku_name            = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
