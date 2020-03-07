terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_openid_connect_provider" "this" {
  api_management_name = var.api_management_name
  client_id           = var.client_id
  client_secret       = var.client_secret
  description         = var.description
  display_name        = var.display_name
  metadata_endpoint   = var.metadata_endpoint
  name                = var.name
  resource_group_name = var.resource_group_name

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

