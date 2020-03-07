module "azurerm_eventgrid_event_subscription" {
  source = "./azurerm/r/azurerm_eventgrid_event_subscription"

  event_delivery_schema = null
  included_event_types  = []
  labels                = []
  name                  = null
  scope                 = null
  topic_name            = null

  eventhub_endpoint = [{
    eventhub_id = null
  }]

  hybrid_connection_endpoint = [{
    hybrid_connection_id = null
  }]

  retry_policy = [{
    event_time_to_live    = null
    max_delivery_attempts = null
  }]

  storage_blob_dead_letter_destination = [{
    storage_account_id          = null
    storage_blob_container_name = null
  }]

  storage_queue_endpoint = [{
    queue_name         = null
    storage_account_id = null
  }]

  subject_filter = [{
    case_sensitive      = null
    subject_begins_with = null
    subject_ends_with   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  webhook_endpoint = [{
    url = null
  }]
}
