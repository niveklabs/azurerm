module "azurerm_traffic_manager_endpoint" {
  source = "./azurerm/r/azurerm_traffic_manager_endpoint"

  endpoint_location   = null
  endpoint_status     = null
  geo_mappings        = []
  min_child_endpoints = null
  name                = null
  priority            = null
  profile_name        = null
  resource_group_name = null
  target              = null
  target_resource_id  = null
  type                = null
  weight              = null

  custom_header = [{
    name  = null
    value = null
  }]

  subnet = [{
    first = null
    last  = null
    scope = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
