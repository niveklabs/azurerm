module "azurerm_public_ip_prefix" {
  source = "./azurerm/r/azurerm_public_ip_prefix"

  location            = null
  name                = null
  prefix_length       = null
  resource_group_name = null
  sku                 = null
  tags                = {}
  zones               = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
