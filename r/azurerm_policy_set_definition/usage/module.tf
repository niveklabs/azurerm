module "azurerm_policy_set_definition" {
  source = "./azurerm/r/azurerm_policy_set_definition"

  description         = null
  display_name        = null
  management_group_id = null
  metadata            = null
  name                = null
  parameters          = null
  policy_definitions  = null
  policy_type         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
