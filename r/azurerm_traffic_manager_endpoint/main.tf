terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_traffic_manager_endpoint" "this" {
  endpoint_location   = var.endpoint_location
  endpoint_status     = var.endpoint_status
  geo_mappings        = var.geo_mappings
  min_child_endpoints = var.min_child_endpoints
  name                = var.name
  priority            = var.priority
  profile_name        = var.profile_name
  resource_group_name = var.resource_group_name
  target              = var.target
  target_resource_id  = var.target_resource_id
  type                = var.type
  weight              = var.weight

  dynamic "custom_header" {
    for_each = var.custom_header
    content {
      name  = custom_header.value["name"]
      value = custom_header.value["value"]
    }
  }

  dynamic "subnet" {
    for_each = var.subnet
    content {
      first = subnet.value["first"]
      last  = subnet.value["last"]
      scope = subnet.value["scope"]
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

