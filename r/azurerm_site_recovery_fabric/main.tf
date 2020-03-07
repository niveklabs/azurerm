terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_site_recovery_fabric" "this" {
  location            = var.location
  name                = var.name
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name

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

