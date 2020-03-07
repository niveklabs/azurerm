terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_relay_hybrid_connection" "this" {
  name                          = var.name
  relay_namespace_name          = var.relay_namespace_name
  requires_client_authorization = var.requires_client_authorization
  resource_group_name           = var.resource_group_name
  user_metadata                 = var.user_metadata

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

