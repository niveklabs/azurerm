module "azurerm_resource_group" {
  source = "./modules/azurerm/d/azurerm_resource_group"

  name = null

  timeouts = [{
    read = null
  }]
}
