terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_express_route_circuit_authorization" "this" {
  express_route_circuit_name = var.express_route_circuit_name
  name                       = var.name
  resource_group_name        = var.resource_group_name

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

