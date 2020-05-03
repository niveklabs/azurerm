terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_policy_remediation" "this" {
  location_filters               = var.location_filters
  name                           = var.name
  policy_assignment_id           = var.policy_assignment_id
  policy_definition_reference_id = var.policy_definition_reference_id
  scope                          = var.scope

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

