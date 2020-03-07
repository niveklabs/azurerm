module "azurerm_iothub_endpoint_storage_container" {
  source = "./azurerm/r/azurerm_iothub_endpoint_storage_container"

  batch_frequency_in_seconds = null
  connection_string          = null
  container_name             = null
  encoding                   = null
  file_name_format           = null
  iothub_name                = null
  max_chunk_size_in_bytes    = null
  name                       = null
  resource_group_name        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
