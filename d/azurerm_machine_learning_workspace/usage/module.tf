module "azurerm_machine_learning_workspace" {
  source = "./modules/azurerm/d/azurerm_machine_learning_workspace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
