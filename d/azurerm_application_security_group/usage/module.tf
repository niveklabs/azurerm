module "azurerm_application_security_group" {
  source = "./modules/azurerm/d/azurerm_application_security_group"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
