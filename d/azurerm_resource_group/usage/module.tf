module "azurerm_resource_group" {
  source = "./azurerm/d/azurerm_resource_group"

  name = null

  timeouts = [{
    read = null
  }]
}
