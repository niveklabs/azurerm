module "azurerm_cdn_profile" {
  source = "./modules/azurerm/d/azurerm_cdn_profile"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
