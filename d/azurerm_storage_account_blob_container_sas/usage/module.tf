module "azurerm_storage_account_blob_container_sas" {
  source = "./azurerm/d/azurerm_storage_account_blob_container_sas"

  cache_control       = null
  connection_string   = null
  container_name      = null
  content_disposition = null
  content_encoding    = null
  content_language    = null
  content_type        = null
  expiry              = null
  https_only          = null
  ip_address          = null
  start               = null

  permissions = [{
    add    = null
    create = null
    delete = null
    list   = null
    read   = null
    write  = null
  }]

  timeouts = [{
    read = null
  }]
}
