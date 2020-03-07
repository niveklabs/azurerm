terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_lb_outbound_rule" "this" {
  allocated_outbound_ports = var.allocated_outbound_ports
  backend_address_pool_id  = var.backend_address_pool_id
  enable_tcp_reset         = var.enable_tcp_reset
  idle_timeout_in_minutes  = var.idle_timeout_in_minutes
  loadbalancer_id          = var.loadbalancer_id
  name                     = var.name
  protocol                 = var.protocol
  resource_group_name      = var.resource_group_name

  dynamic "frontend_ip_configuration" {
    for_each = var.frontend_ip_configuration
    content {
      name = frontend_ip_configuration.value["name"]
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

