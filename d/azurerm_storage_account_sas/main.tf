terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_storage_account_sas" "this" {
  connection_string = var.connection_string
  expiry            = var.expiry
  https_only        = var.https_only
  start             = var.start

  dynamic "permissions" {
    for_each = var.permissions
    content {
      add     = permissions.value["add"]
      create  = permissions.value["create"]
      delete  = permissions.value["delete"]
      list    = permissions.value["list"]
      process = permissions.value["process"]
      read    = permissions.value["read"]
      update  = permissions.value["update"]
      write   = permissions.value["write"]
    }
  }

  dynamic "resource_types" {
    for_each = var.resource_types
    content {
      container = resource_types.value["container"]
      object    = resource_types.value["object"]
      service   = resource_types.value["service"]
    }
  }

  dynamic "services" {
    for_each = var.services
    content {
      blob  = services.value["blob"]
      file  = services.value["file"]
      queue = services.value["queue"]
      table = services.value["table"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

