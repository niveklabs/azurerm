terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_backup_policy_file_share" "this" {
  name                = var.name
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name
  timezone            = var.timezone

  dynamic "backup" {
    for_each = var.backup
    content {
      frequency = backup.value["frequency"]
      time      = backup.value["time"]
    }
  }

  dynamic "retention_daily" {
    for_each = var.retention_daily
    content {
      count = retention_daily.value["count"]
    }
  }

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

