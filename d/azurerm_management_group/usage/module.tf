module "azurerm_management_group" {
  source = "./modules/azurerm/d/azurerm_management_group"

  group_id = null

  timeouts = [{
    read = null
  }]
}
