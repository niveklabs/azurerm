terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_credential" "this" {
  automation_account_name = var.automation_account_name
  description             = var.description
  name                    = var.name
  password                = var.password
  resource_group_name     = var.resource_group_name
  username                = var.username

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

