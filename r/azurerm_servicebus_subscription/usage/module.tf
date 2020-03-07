module "azurerm_servicebus_subscription" {
  source = "./azurerm/r/azurerm_servicebus_subscription"

  auto_delete_on_idle                  = null
  dead_lettering_on_message_expiration = null
  default_message_ttl                  = null
  enable_batched_operations            = null
  forward_dead_lettered_messages_to    = null
  forward_to                           = null
  lock_duration                        = null
  max_delivery_count                   = null
  name                                 = null
  namespace_name                       = null
  requires_session                     = null
  resource_group_name                  = null
  topic_name                           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
