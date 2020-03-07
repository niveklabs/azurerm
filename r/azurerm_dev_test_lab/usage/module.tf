module "azurerm_dev_test_lab" {
  source = "./azurerm/r/azurerm_dev_test_lab"

  location            = null
  name                = null
  resource_group_name = null
  storage_type        = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
