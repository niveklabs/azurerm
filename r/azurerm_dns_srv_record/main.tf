terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dns_srv_record" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  ttl                 = var.ttl
  zone_name           = var.zone_name

  dynamic "record" {
    for_each = var.record
    content {
      port     = record.value["port"]
      priority = record.value["priority"]
      target   = record.value["target"]
      weight   = record.value["weight"]
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

