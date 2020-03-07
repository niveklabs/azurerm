terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_shared_image" "this" {
  description           = var.description
  eula                  = var.eula
  gallery_name          = var.gallery_name
  location              = var.location
  name                  = var.name
  os_type               = var.os_type
  privacy_statement_uri = var.privacy_statement_uri
  release_note_uri      = var.release_note_uri
  resource_group_name   = var.resource_group_name
  tags                  = var.tags

  dynamic "identifier" {
    for_each = var.identifier
    content {
      offer     = identifier.value["offer"]
      publisher = identifier.value["publisher"]
      sku       = identifier.value["sku"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

