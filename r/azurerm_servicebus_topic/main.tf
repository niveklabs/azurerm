terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_servicebus_topic" "this" {
  auto_delete_on_idle                     = var.auto_delete_on_idle
  default_message_ttl                     = var.default_message_ttl
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window
  enable_batched_operations               = var.enable_batched_operations
  enable_express                          = var.enable_express
  enable_partitioning                     = var.enable_partitioning
  max_size_in_megabytes                   = var.max_size_in_megabytes
  name                                    = var.name
  namespace_name                          = var.namespace_name
  requires_duplicate_detection            = var.requires_duplicate_detection
  resource_group_name                     = var.resource_group_name
  status                                  = var.status
  support_ordering                        = var.support_ordering

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

