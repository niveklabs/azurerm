module "azurerm_policy_assignment" {
  source = "./azurerm/r/azurerm_policy_assignment"

  description          = null
  display_name         = null
  location             = null
  name                 = null
  not_scopes           = []
  parameters           = null
  policy_definition_id = null
  scope                = null

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
