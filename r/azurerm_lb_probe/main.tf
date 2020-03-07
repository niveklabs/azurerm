terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_lb_probe" "this" {
  interval_in_seconds = var.interval_in_seconds
  loadbalancer_id     = var.loadbalancer_id
  name                = var.name
  number_of_probes    = var.number_of_probes
  port                = var.port
  protocol            = var.protocol
  request_path        = var.request_path
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

