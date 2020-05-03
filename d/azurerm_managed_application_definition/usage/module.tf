module "azurerm_managed_application_definition" {
  source = "./modules/azurerm/d/azurerm_managed_application_definition"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
