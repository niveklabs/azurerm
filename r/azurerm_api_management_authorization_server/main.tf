terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_authorization_server" "this" {
  api_management_name          = var.api_management_name
  authorization_endpoint       = var.authorization_endpoint
  authorization_methods        = var.authorization_methods
  bearer_token_sending_methods = var.bearer_token_sending_methods
  client_authentication_method = var.client_authentication_method
  client_id                    = var.client_id
  client_registration_endpoint = var.client_registration_endpoint
  client_secret                = var.client_secret
  default_scope                = var.default_scope
  description                  = var.description
  display_name                 = var.display_name
  grant_types                  = var.grant_types
  name                         = var.name
  resource_group_name          = var.resource_group_name
  resource_owner_password      = var.resource_owner_password
  resource_owner_username      = var.resource_owner_username
  support_state                = var.support_state
  token_endpoint               = var.token_endpoint

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  dynamic "token_body_parameter" {
    for_each = var.token_body_parameter
    content {
      name  = token_body_parameter.value["name"]
      value = token_body_parameter.value["value"]
    }
  }

}

