module "azurerm_logic_app_trigger_recurrence" {
  source = "./azurerm/r/azurerm_logic_app_trigger_recurrence"

  frequency    = null
  interval     = null
  logic_app_id = null
  name         = null
  start_time   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
