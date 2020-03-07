terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_signalr_service" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "cors" {
    for_each = var.cors
    content {
      allowed_origins = cors.value["allowed_origins"]
    }
  }

  dynamic "features" {
    for_each = var.features
    content {
      flag  = features.value["flag"]
      value = features.value["value"]
    }
  }

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      name     = sku.value["name"]
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

