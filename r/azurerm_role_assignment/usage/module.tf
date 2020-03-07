module "azurerm_role_assignment" {
  source = "./azurerm/r/azurerm_role_assignment"

  name                             = null
  principal_id                     = null
  role_definition_id               = null
  role_definition_name             = null
  scope                            = null
  skip_service_principal_aad_check = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
