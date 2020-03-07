module "azurerm_public_ips" {
  source = "./azurerm/d/azurerm_public_ips"

  allocation_type     = null
  attached            = null
  name_prefix         = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
