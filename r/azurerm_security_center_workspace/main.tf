terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_security_center_workspace" "this" {
  scope        = var.scope
  workspace_id = var.workspace_id

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

