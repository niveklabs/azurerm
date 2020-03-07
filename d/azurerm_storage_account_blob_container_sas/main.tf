terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_storage_account_blob_container_sas" "this" {
  cache_control       = var.cache_control
  connection_string   = var.connection_string
  container_name      = var.container_name
  content_disposition = var.content_disposition
  content_encoding    = var.content_encoding
  content_language    = var.content_language
  content_type        = var.content_type
  expiry              = var.expiry
  https_only          = var.https_only
  ip_address          = var.ip_address
  start               = var.start

  dynamic "permissions" {
    for_each = var.permissions
    content {
      add    = permissions.value["add"]
      create = permissions.value["create"]
      delete = permissions.value["delete"]
      list   = permissions.value["list"]
      read   = permissions.value["read"]
      write  = permissions.value["write"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

