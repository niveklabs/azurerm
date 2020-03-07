module "azurerm_lb" {
  source = "./azurerm/d/azurerm_lb"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
