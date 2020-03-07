terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_policy_set_definition" "this" {
  description         = var.description
  display_name        = var.display_name
  management_group_id = var.management_group_id
  metadata            = var.metadata
  name                = var.name
  parameters          = var.parameters
  policy_definitions  = var.policy_definitions
  policy_type         = var.policy_type

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

