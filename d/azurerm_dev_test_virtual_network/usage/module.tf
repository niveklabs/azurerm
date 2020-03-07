module "azurerm_dev_test_virtual_network" {
  source = "./azurerm/d/azurerm_dev_test_virtual_network"

  lab_name            = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
