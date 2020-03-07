terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_subnet_nat_gateway_association" "this" {
  nat_gateway_id = var.nat_gateway_id
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

