terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_lb_backend_address_pool" "this" {
  loadbalancer_id = var.loadbalancer_id
  name            = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

