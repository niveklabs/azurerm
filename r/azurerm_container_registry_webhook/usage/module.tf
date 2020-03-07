module "azurerm_container_registry_webhook" {
  source = "./azurerm/r/azurerm_container_registry_webhook"

  actions             = []
  custom_headers      = {}
  location            = null
  name                = null
  registry_name       = null
  resource_group_name = null
  scope               = null
  service_uri         = null
  status              = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
