module "azurerm_resource_group" {
  source = "./modules/azurerm/r/azurerm_resource_group"

  location = null
  name     = null
  tags     = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
