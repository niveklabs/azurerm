module "azurerm_logic_app_action_custom" {
  source = "./azurerm/r/azurerm_logic_app_action_custom"

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
