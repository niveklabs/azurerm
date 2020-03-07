terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_servicebus_subscription_rule" "this" {
  action              = var.action
  filter_type         = var.filter_type
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
  sql_filter          = var.sql_filter
  subscription_name   = var.subscription_name
  topic_name          = var.topic_name

  dynamic "correlation_filter" {
    for_each = var.correlation_filter
    content {
      content_type        = correlation_filter.value["content_type"]
      correlation_id      = correlation_filter.value["correlation_id"]
      label               = correlation_filter.value["label"]
      message_id          = correlation_filter.value["message_id"]
      reply_to            = correlation_filter.value["reply_to"]
      reply_to_session_id = correlation_filter.value["reply_to_session_id"]
      session_id          = correlation_filter.value["session_id"]
      to                  = correlation_filter.value["to"]
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

