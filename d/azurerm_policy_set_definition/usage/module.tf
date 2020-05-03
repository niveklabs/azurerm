module "azurerm_policy_set_definition" {
  source = "./modules/azurerm/d/azurerm_policy_set_definition"

  display_name          = null
  management_group_name = null
  name                  = null

  timeouts = [{
    read = null
  }]
}
