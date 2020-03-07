module "azurerm_logic_app_trigger_custom" {
  source = "./azurerm/r/azurerm_logic_app_trigger_custom"

  body         = null
  logic_app_id = null
  name         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
