module "azurerm_stream_analytics_output_servicebus_topic" {
  source = "./azurerm/r/azurerm_stream_analytics_output_servicebus_topic"

  name                      = null
  resource_group_name       = null
  servicebus_namespace      = null
  shared_access_policy_key  = null
  shared_access_policy_name = null
  stream_analytics_job_name = null
  topic_name                = null

  serialization = [{
    encoding        = null
    field_delimiter = null
    format          = null
    type            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
