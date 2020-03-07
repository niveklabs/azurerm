terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_job_schedule" "this" {
  automation_account_name = var.automation_account_name
  job_schedule_id         = var.job_schedule_id
  parameters              = var.parameters
  resource_group_name     = var.resource_group_name
  run_on                  = var.run_on
  runbook_name            = var.runbook_name
  schedule_name           = var.schedule_name

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

