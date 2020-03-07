terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_logic_app_action_custom" "this" {
  body         = var.body
  logic_app_id = var.logic_app_id
  name         = var.name

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

