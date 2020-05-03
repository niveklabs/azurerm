module "azurerm_virtual_hub" {
  source = "./modules/azurerm/d/azurerm_virtual_hub"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
