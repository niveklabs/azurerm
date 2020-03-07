terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_private_endpoint" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  dynamic "private_service_connection" {
    for_each = var.private_service_connection
    content {
      is_manual_connection           = private_service_connection.value["is_manual_connection"]
      name                           = private_service_connection.value["name"]
      private_connection_resource_id = private_service_connection.value["private_connection_resource_id"]
      request_message                = private_service_connection.value["request_message"]
      subresource_names              = private_service_connection.value["subresource_names"]
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

