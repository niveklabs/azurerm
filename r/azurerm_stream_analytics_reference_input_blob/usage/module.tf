module "azurerm_stream_analytics_reference_input_blob" {
  source = "./azurerm/r/azurerm_stream_analytics_reference_input_blob"

  date_format               = null
  name                      = null
  path_pattern              = null
  resource_group_name       = null
  storage_account_key       = null
  storage_account_name      = null
  storage_container_name    = null
  stream_analytics_job_name = null
  time_format               = null

  serialization = [{
    encoding        = null
    field_delimiter = null
    type            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
