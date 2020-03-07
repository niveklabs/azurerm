terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_application_insights_api_key" "this" {
  application_insights_id = var.application_insights_id
  name                    = var.name
  read_permissions        = var.read_permissions
  write_permissions       = var.write_permissions

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

