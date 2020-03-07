terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_user" "this" {
  api_management_name = var.api_management_name
  confirmation        = var.confirmation
  email               = var.email
  first_name          = var.first_name
  last_name           = var.last_name
  note                = var.note
  password            = var.password
  resource_group_name = var.resource_group_name
  state               = var.state
  user_id             = var.user_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

