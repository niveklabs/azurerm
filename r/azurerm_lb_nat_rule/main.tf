terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_lb_nat_rule" "this" {
  backend_port                   = var.backend_port
  enable_floating_ip             = var.enable_floating_ip
  enable_tcp_reset               = var.enable_tcp_reset
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  frontend_port                  = var.frontend_port
  idle_timeout_in_minutes        = var.idle_timeout_in_minutes
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

