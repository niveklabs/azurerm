module "azurerm_user_assigned_identity" {
  source = "./azurerm/r/azurerm_user_assigned_identity"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
