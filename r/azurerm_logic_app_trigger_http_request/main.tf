terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_logic_app_trigger_http_request" "this" {
  logic_app_id  = var.logic_app_id
  method        = var.method
  name          = var.name
  relative_path = var.relative_path
  schema        = var.schema

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

