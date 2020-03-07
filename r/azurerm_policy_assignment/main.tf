terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_policy_assignment" "this" {
  description          = var.description
  display_name         = var.display_name
  location             = var.location
  name                 = var.name
  not_scopes           = var.not_scopes
  parameters           = var.parameters
  policy_definition_id = var.policy_definition_id
  scope                = var.scope

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
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

