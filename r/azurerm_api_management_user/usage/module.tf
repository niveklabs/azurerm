module "azurerm_api_management_user" {
  source = "./azurerm/r/azurerm_api_management_user"

  api_management_name = null
  confirmation        = null
  email               = null
  first_name          = null
  last_name           = null
  note                = null
  password            = null
  resource_group_name = null
  state               = null
  user_id             = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
