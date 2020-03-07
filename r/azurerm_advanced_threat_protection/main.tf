terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_advanced_threat_protection" "this" {
  enabled            = var.enabled
  target_resource_id = var.target_resource_id

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

