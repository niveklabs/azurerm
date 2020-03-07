terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dev_test_policy" "this" {
  description         = var.description
  evaluator_type      = var.evaluator_type
  fact_data           = var.fact_data
  lab_name            = var.lab_name
  name                = var.name
  policy_set_name     = var.policy_set_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  threshold           = var.threshold

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

