terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_management_lock" "this" {
  lock_level = var.lock_level
  name       = var.name
  notes      = var.notes
  scope      = var.scope

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

