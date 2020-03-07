module "azurerm_role_definition" {
  source = "./azurerm/r/azurerm_role_definition"

  assignable_scopes  = []
  description        = null
  name               = null
  role_definition_id = null
  scope              = null

  permissions = [{
    actions          = []
    data_actions     = []
    not_actions      = []
    not_data_actions = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
