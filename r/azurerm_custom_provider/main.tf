terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_custom_provider" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "action" {
    for_each = var.action
    content {
      endpoint = action.value["endpoint"]
      name     = action.value["name"]
    }
  }

  dynamic "resource_type" {
    for_each = var.resource_type
    content {
      endpoint     = resource_type.value["endpoint"]
      name         = resource_type.value["name"]
      routing_type = resource_type.value["routing_type"]
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

  dynamic "validation" {
    for_each = var.validation
    content {
      specification = validation.value["specification"]
    }
  }

}

