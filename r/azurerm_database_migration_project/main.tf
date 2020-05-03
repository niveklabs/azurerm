terraform {
  required_providers {
    azurerm = ">= 2.2.0"
  }
}

resource "azurerm_database_migration_project" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  service_name        = var.service_name
  source_platform     = var.source_platform
  tags                = var.tags
  target_platform     = var.target_platform

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

