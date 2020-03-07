terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_schedule" "this" {
  automation_account_name = var.automation_account_name
  description             = var.description
  expiry_time             = var.expiry_time
  frequency               = var.frequency
  interval                = var.interval
  month_days              = var.month_days
  name                    = var.name
  resource_group_name     = var.resource_group_name
  start_time              = var.start_time
  timezone                = var.timezone
  week_days               = var.week_days

  dynamic "monthly_occurrence" {
    for_each = var.monthly_occurrence
    content {
      day        = monthly_occurrence.value["day"]
      occurrence = monthly_occurrence.value["occurrence"]
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

