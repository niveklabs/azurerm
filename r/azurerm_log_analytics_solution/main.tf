terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_log_analytics_solution" "this" {
  location              = var.location
  resource_group_name   = var.resource_group_name
  solution_name         = var.solution_name
  workspace_name        = var.workspace_name
  workspace_resource_id = var.workspace_resource_id

  dynamic "plan" {
    for_each = var.plan
    content {
      product        = plan.value["product"]
      promotion_code = plan.value["promotion_code"]
      publisher      = plan.value["publisher"]
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

