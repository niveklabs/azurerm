module "azurerm_lb" {
  source = "./modules/azurerm/d/azurerm_lb"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
