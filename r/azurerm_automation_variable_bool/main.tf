terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_variable_bool" "this" {
  automation_account_name = var.automation_account_name
  description             = var.description
  encrypted               = var.encrypted
  name                    = var.name
  resource_group_name     = var.resource_group_name
  value                   = var.value

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

