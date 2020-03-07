terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_backup_policy_vm" "this" {
  name                = var.name
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  timezone            = var.timezone

  dynamic "backup" {
    for_each = var.backup
    content {
      frequency = backup.value["frequency"]
      time      = backup.value["time"]
      weekdays  = backup.value["weekdays"]
    }
  }

  dynamic "retention_daily" {
    for_each = var.retention_daily
    content {
      count = retention_daily.value["count"]
    }
  }

  dynamic "retention_monthly" {
    for_each = var.retention_monthly
    content {
      count    = retention_monthly.value["count"]
      weekdays = retention_monthly.value["weekdays"]
      weeks    = retention_monthly.value["weeks"]
    }
  }

  dynamic "retention_weekly" {
    for_each = var.retention_weekly
    content {
      count    = retention_weekly.value["count"]
      weekdays = retention_weekly.value["weekdays"]
    }
  }

  dynamic "retention_yearly" {
    for_each = var.retention_yearly
    content {
      count    = retention_yearly.value["count"]
      months   = retention_yearly.value["months"]
      weekdays = retention_yearly.value["weekdays"]
      weeks    = retention_yearly.value["weeks"]
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

