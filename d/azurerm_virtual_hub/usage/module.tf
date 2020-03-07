module "azurerm_virtual_hub" {
  source = "./azurerm/d/azurerm_virtual_hub"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
