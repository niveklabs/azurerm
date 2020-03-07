terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_servicebus_queue" "this" {
  auto_delete_on_idle                     = var.auto_delete_on_idle
  dead_lettering_on_message_expiration    = var.dead_lettering_on_message_expiration
  default_message_ttl                     = var.default_message_ttl
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window
  enable_express                          = var.enable_express
  enable_partitioning                     = var.enable_partitioning
  lock_duration                           = var.lock_duration
  max_delivery_count                      = var.max_delivery_count
  max_size_in_megabytes                   = var.max_size_in_megabytes
  name                                    = var.name
  namespace_name                          = var.namespace_name
  requires_duplicate_detection            = var.requires_duplicate_detection
  requires_session                        = var.requires_session
  resource_group_name                     = var.resource_group_name

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

