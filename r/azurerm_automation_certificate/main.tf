terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_certificate" "this" {
  automation_account_name = var.automation_account_name
  base64                  = var.base64
  description             = var.description
  name                    = var.name
  resource_group_name     = var.resource_group_name

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

