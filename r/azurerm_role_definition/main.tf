terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_role_definition" "this" {
  assignable_scopes  = var.assignable_scopes
  description        = var.description
  name               = var.name
  role_definition_id = var.role_definition_id
  scope              = var.scope

  dynamic "permissions" {
    for_each = var.permissions
    content {
      actions          = permissions.value["actions"]
      data_actions     = permissions.value["data_actions"]
      not_actions      = permissions.value["not_actions"]
      not_data_actions = permissions.value["not_data_actions"]
    }
  }

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

