module "azurerm_automation_job_schedule" {
  source = "./azurerm/r/azurerm_automation_job_schedule"

  automation_account_name = null
  job_schedule_id         = null
  parameters              = {}
  resource_group_name     = null
  run_on                  = null
  runbook_name            = null
  schedule_name           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
