terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_private_link_service_endpoint_connections" "this" {
  resource_group_name = var.resource_group_name
  service_id          = var.service_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

