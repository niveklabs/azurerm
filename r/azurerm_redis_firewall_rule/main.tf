terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_redis_firewall_rule" "this" {
  end_ip              = var.end_ip
  name                = var.name
  redis_cache_name    = var.redis_cache_name
  resource_group_name = var.resource_group_name
  start_ip            = var.start_ip

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

