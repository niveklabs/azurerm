module "azurerm_network_profile" {
  source = "./azurerm/r/azurerm_network_profile"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  container_network_interface = [{
    ip_configuration = [{
      name      = null
      subnet_id = null
    }]
    name = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
