terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_subnet_route_table_association" "this" {
  route_table_id = var.route_table_id
  subnet_id      = var.subnet_id

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

