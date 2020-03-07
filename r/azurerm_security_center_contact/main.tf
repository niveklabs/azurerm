terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_security_center_contact" "this" {
  alert_notifications = var.alert_notifications
  alerts_to_admins    = var.alerts_to_admins
  email               = var.email
  phone               = var.phone

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

