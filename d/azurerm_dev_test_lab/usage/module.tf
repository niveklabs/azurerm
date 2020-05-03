module "azurerm_dev_test_lab" {
  source = "./modules/azurerm/d/azurerm_dev_test_lab"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
