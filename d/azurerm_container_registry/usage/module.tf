module "azurerm_container_registry" {
  source = "./modules/azurerm/d/azurerm_container_registry"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
