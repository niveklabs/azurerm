module "azurerm_policy_definition" {
  source = "./azurerm/d/azurerm_policy_definition"

  display_name        = null
  management_group_id = null

  timeouts = [{
    read = null
  }]
}
