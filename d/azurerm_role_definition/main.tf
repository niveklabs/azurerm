terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_role_definition" "this" {
  name               = var.name
  role_definition_id = var.role_definition_id
  scope              = var.scope

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

