terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventgrid_event_subscription" "this" {
  event_delivery_schema = var.event_delivery_schema
  included_event_types  = var.included_event_types
  labels                = var.labels
  name                  = var.name
  scope                 = var.scope
  topic_name            = var.topic_name

  dynamic "eventhub_endpoint" {
    for_each = var.eventhub_endpoint
    content {
      eventhub_id = eventhub_endpoint.value["eventhub_id"]
    }
  }

  dynamic "hybrid_connection_endpoint" {
    for_each = var.hybrid_connection_endpoint
    content {
      hybrid_connection_id = hybrid_connection_endpoint.value["hybrid_connection_id"]
    }
  }

  dynamic "retry_policy" {
    for_each = var.retry_policy
    content {
      event_time_to_live    = retry_policy.value["event_time_to_live"]
      max_delivery_attempts = retry_policy.value["max_delivery_attempts"]
    }
  }

  dynamic "storage_blob_dead_letter_destination" {
    for_each = var.storage_blob_dead_letter_destination
    content {
      storage_account_id          = storage_blob_dead_letter_destination.value["storage_account_id"]
      storage_blob_container_name = storage_blob_dead_letter_destination.value["storage_blob_container_name"]
    }
  }

  dynamic "storage_queue_endpoint" {
    for_each = var.storage_queue_endpoint
    content {
      queue_name         = storage_queue_endpoint.value["queue_name"]
      storage_account_id = storage_queue_endpoint.value["storage_account_id"]
    }
  }

  dynamic "subject_filter" {
    for_each = var.subject_filter
    content {
      case_sensitive      = subject_filter.value["case_sensitive"]
      subject_begins_with = subject_filter.value["subject_begins_with"]
      subject_ends_with   = subject_filter.value["subject_ends_with"]
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

  dynamic "webhook_endpoint" {
    for_each = var.webhook_endpoint
    content {
      url = webhook_endpoint.value["url"]
    }
  }

}

