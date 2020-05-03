module "azurerm_resources" {
  source = "./modules/azurerm/d/azurerm_resources"

  name                = null
  required_tags       = {}
  resource_group_name = null
  type                = null

  timeouts = [{
    read = null
  }]
}
