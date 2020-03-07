terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dedicated_host_group" "this" {
  location                    = var.location
  name                        = var.name
  platform_fault_domain_count = var.platform_fault_domain_count
  resource_group_name         = var.resource_group_name
  tags                        = var.tags
  zones                       = var.zones

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

