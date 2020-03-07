module "azurerm_eventhub" {
  source = "./azurerm/r/azurerm_eventhub"

  message_retention   = null
  name                = null
  namespace_name      = null
  partition_count     = null
  resource_group_name = null

  capture_description = [{
    destination = [{
      archive_name_format = null
      blob_container_name = null
      name                = null
      storage_account_id  = null
    }]
    enabled             = null
    encoding            = null
    interval_in_seconds = null
    size_limit_in_bytes = null
    skip_empty_archives = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
