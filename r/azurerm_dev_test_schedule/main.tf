terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dev_test_schedule" "this" {
  lab_name            = var.lab_name
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  status              = var.status
  tags                = var.tags
  task_type           = var.task_type
  time_zone_id        = var.time_zone_id

  dynamic "daily_recurrence" {
    for_each = var.daily_recurrence
    content {
      time = daily_recurrence.value["time"]
    }
  }

  dynamic "hourly_recurrence" {
    for_each = var.hourly_recurrence
    content {
      minute = hourly_recurrence.value["minute"]
    }
  }

  dynamic "notification_settings" {
    for_each = var.notification_settings
    content {
      status          = notification_settings.value["status"]
      time_in_minutes = notification_settings.value["time_in_minutes"]
      webhook_url     = notification_settings.value["webhook_url"]
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

  dynamic "weekly_recurrence" {
    for_each = var.weekly_recurrence
    content {
      time      = weekly_recurrence.value["time"]
      week_days = weekly_recurrence.value["week_days"]
    }
  }

}

