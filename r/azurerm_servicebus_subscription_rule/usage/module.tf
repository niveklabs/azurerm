module "azurerm_servicebus_subscription_rule" {
  source = "./azurerm/r/azurerm_servicebus_subscription_rule"

  action              = null
  filter_type         = null
  name                = null
  namespace_name      = null
  resource_group_name = null
  sql_filter          = null
  subscription_name   = null
  topic_name          = null

  correlation_filter = [{
    content_type        = null
    correlation_id      = null
    label               = null
    message_id          = null
    reply_to            = null
    reply_to_session_id = null
    session_id          = null
    to                  = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
