module "azurerm_app_service_plan" {
  source = "./azurerm/r/azurerm_app_service_plan"

  app_service_environment_id   = null
  is_xenon                     = null
  kind                         = null
  location                     = null
  maximum_elastic_worker_count = null
  name                         = null
  per_site_scaling             = null
  reserved                     = null
  resource_group_name          = null
  tags                         = {}

  sku = [{
    capacity = null
    size     = null
    tier     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
