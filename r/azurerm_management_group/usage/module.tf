module "azurerm_management_group" {
  source = "./modules/azurerm/r/azurerm_management_group"

  display_name               = null
  group_id                   = null
  name                       = null
  parent_management_group_id = null
  subscription_ids           = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
