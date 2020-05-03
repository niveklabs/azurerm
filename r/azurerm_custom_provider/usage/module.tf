module "azurerm_custom_provider" {
  source = "./modules/azurerm/r/azurerm_custom_provider"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  action = [{
    endpoint = null
    name     = null
  }]

  resource_type = [{
    endpoint     = null
    name         = null
    routing_type = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  validation = [{
    specification = null
  }]
}
