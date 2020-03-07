terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_public_ip" "this" {
  allocation_method       = var.allocation_method
  domain_name_label       = var.domain_name_label
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  ip_version              = var.ip_version
  location                = var.location
  name                    = var.name
  public_ip_prefix_id     = var.public_ip_prefix_id
  resource_group_name     = var.resource_group_name
  reverse_fqdn            = var.reverse_fqdn
  sku                     = var.sku
  tags                    = var.tags
  zones                   = var.zones

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

