terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_lb_nat_pool" "this" {
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  frontend_port_end              = var.frontend_port_end
  frontend_port_start            = var.frontend_port_start
  loadbalancer_id                = var.loadbalancer_id
  name                           = var.name
  protocol                       = var.protocol
  resource_group_name            = var.resource_group_name

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

