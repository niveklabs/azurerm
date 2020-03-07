terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dns_cname_record" "this" {
  name                = var.name
  record              = var.record
  resource_group_name = var.resource_group_name
  tags                = var.tags
  target_resource_id  = var.target_resource_id
  ttl                 = var.ttl
  zone_name           = var.zone_name

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

