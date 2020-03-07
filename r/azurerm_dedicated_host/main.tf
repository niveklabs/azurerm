terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dedicated_host" "this" {
  auto_replace_on_failure = var.auto_replace_on_failure
  dedicated_host_group_id = var.dedicated_host_group_id
  license_type            = var.license_type
  location                = var.location
  name                    = var.name
  platform_fault_domain   = var.platform_fault_domain
  sku_name                = var.sku_name
  tags                    = var.tags

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

