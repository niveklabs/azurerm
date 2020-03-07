terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_security_center_subscription_pricing" "this" {
  tier = var.tier

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

