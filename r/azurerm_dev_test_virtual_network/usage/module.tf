module "azurerm_dev_test_virtual_network" {
  source = "./azurerm/r/azurerm_dev_test_virtual_network"

  description         = null
  lab_name            = null
  name                = null
  resource_group_name = null
  tags                = {}

  subnet = [{
    name                            = null
    use_in_virtual_machine_creation = null
    use_public_ip_address           = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
