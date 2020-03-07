module "azurerm_public_ip_prefix" {
  source = "./azurerm/d/azurerm_public_ip_prefix"

  name                = null
  resource_group_name = null
  zones               = []

  timeouts = [{
    read = null
  }]
}
