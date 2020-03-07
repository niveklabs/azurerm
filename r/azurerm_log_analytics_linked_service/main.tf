terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_log_analytics_linked_service" "this" {
  linked_service_name = var.linked_service_name
  resource_group_name = var.resource_group_name
  resource_id         = var.resource_id
  tags                = var.tags
  workspace_name      = var.workspace_name

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

