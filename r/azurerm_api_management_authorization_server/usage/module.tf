module "azurerm_api_management_authorization_server" {
  source = "./azurerm/r/azurerm_api_management_authorization_server"

  api_management_name          = null
  authorization_endpoint       = null
  authorization_methods        = []
  bearer_token_sending_methods = []
  client_authentication_method = []
  client_id                    = null
  client_registration_endpoint = null
  client_secret                = null
  default_scope                = null
  description                  = null
  display_name                 = null
  grant_types                  = []
  name                         = null
  resource_group_name          = null
  resource_owner_password      = null
  resource_owner_username      = null
  support_state                = null
  token_endpoint               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  token_body_parameter = [{
    name  = null
    value = null
  }]
}
