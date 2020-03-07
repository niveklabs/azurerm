module "azurerm_app_service_environment" {
  source = "./azurerm/r/azurerm_app_service_environment"

  front_end_scale_factor       = null
  internal_load_balancing_mode = null
  name                         = null
  pricing_tier                 = null
  subnet_id                    = null
  tags                         = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
