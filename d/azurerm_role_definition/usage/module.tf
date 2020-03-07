module "azurerm_role_definition" {
  source = "./azurerm/d/azurerm_role_definition"

  name               = null
  role_definition_id = null
  scope              = null

  timeouts = [{
    read = null
  }]
}
