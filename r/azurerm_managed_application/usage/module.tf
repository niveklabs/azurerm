module "azurerm_managed_application" {
  source = "./modules/azurerm/r/azurerm_managed_application"

  application_definition_id   = null
  kind                        = null
  location                    = null
  managed_resource_group_name = null
  name                        = null
  parameters                  = {}
  resource_group_name         = null
  tags                        = {}

  plan = [{
    name           = null
    product        = null
    promotion_code = null
    publisher      = null
    version        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
