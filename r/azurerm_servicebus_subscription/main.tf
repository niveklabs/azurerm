terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_servicebus_subscription" "this" {
  auto_delete_on_idle                  = var.auto_delete_on_idle
  dead_lettering_on_message_expiration = var.dead_lettering_on_message_expiration
  default_message_ttl                  = var.default_message_ttl
  enable_batched_operations            = var.enable_batched_operations
  forward_dead_lettered_messages_to    = var.forward_dead_lettered_messages_to
  forward_to                           = var.forward_to
  lock_duration                        = var.lock_duration
  max_delivery_count                   = var.max_delivery_count
  name                                 = var.name
  namespace_name                       = var.namespace_name
  requires_session                     = var.requires_session
  resource_group_name                  = var.resource_group_name
  topic_name                           = var.topic_name

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

