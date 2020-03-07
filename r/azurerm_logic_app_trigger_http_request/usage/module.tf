module "azurerm_logic_app_trigger_http_request" {
  source = "./azurerm/r/azurerm_logic_app_trigger_http_request"

  logic_app_id  = null
  method        = null
  name          = null
  relative_path = null
  schema        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
