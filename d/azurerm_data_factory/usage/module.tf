module "azurerm_data_factory" {
  source = "./azurerm/d/azurerm_data_factory"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
