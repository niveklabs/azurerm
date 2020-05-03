module "azurerm_application_security_group" {
  source = "./modules/azurerm/r/azurerm_application_security_group"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
