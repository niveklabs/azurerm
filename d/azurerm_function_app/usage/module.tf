module "azurerm_function_app" {
  source = "./modules/azurerm/d/azurerm_function_app"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
