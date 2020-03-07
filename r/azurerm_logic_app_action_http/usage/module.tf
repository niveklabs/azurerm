module "azurerm_logic_app_action_http" {
  source = "./azurerm/r/azurerm_logic_app_action_http"

  body         = null
  headers      = {}
  logic_app_id = null
  method       = null
  name         = null
  uri          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
