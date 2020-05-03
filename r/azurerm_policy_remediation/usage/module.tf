module "azurerm_policy_remediation" {
  source = "./modules/azurerm/r/azurerm_policy_remediation"

  location_filters               = []
  name                           = null
  policy_assignment_id           = null
  policy_definition_reference_id = null
  scope                          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
