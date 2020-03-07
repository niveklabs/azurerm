module "azurerm_logic_app_workflow" {
  source = "./azurerm/r/azurerm_logic_app_workflow"

  location            = null
  name                = null
  parameters          = {}
  resource_group_name = null
  tags                = {}
  workflow_schema     = null
  workflow_version    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
