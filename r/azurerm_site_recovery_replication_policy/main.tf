terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_site_recovery_replication_policy" "this" {
  application_consistent_snapshot_frequency_in_minutes = var.application_consistent_snapshot_frequency_in_minutes
  name                                                 = var.name
  recovery_point_retention_in_minutes                  = var.recovery_point_retention_in_minutes
  recovery_vault_name                                  = var.recovery_vault_name
  resource_group_name                                  = var.resource_group_name

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

