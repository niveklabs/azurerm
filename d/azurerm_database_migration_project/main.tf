terraform {
  required_providers {
    azurerm = ">= 2.7.0"
  }
}

data "azurerm_database_migration_project" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  service_name        = var.service_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

