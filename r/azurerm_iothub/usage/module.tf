module "azurerm_iothub" {
  source = "./azurerm/r/azurerm_iothub"

  event_hub_partition_count   = null
  event_hub_retention_in_days = null
  location                    = null
  name                        = null
  resource_group_name         = null
  tags                        = {}

  endpoint = [{
    batch_frequency_in_seconds = null
    connection_string          = null
    container_name             = null
    encoding                   = null
    file_name_format           = null
    max_chunk_size_in_bytes    = null
    name                       = null
    type                       = null
  }]

  fallback_route = [{
    condition      = null
    enabled        = null
    endpoint_names = []
    source         = null
  }]

  file_upload = [{
    connection_string  = null
    container_name     = null
    default_ttl        = null
    lock_duration      = null
    max_delivery_count = null
    notifications      = null
    sas_ttl            = null
  }]

  ip_filter_rule = [{
    action  = null
    ip_mask = null
    name    = null
  }]

  route = [{
    condition      = null
    enabled        = null
    endpoint_names = []
    name           = null
    source         = null
  }]

  sku = [{
    capacity = null
    name     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
