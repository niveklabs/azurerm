module "azurerm_container_registry" {
  source = "./azurerm/d/azurerm_container_registry"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
