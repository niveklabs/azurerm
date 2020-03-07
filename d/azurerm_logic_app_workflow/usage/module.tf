module "azurerm_logic_app_workflow" {
  source = "./azurerm/d/azurerm_logic_app_workflow"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
