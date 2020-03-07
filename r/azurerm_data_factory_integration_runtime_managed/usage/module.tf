module "azurerm_data_factory_integration_runtime_managed" {
  source = "./azurerm/r/azurerm_data_factory_integration_runtime_managed"

  data_factory_name                = null
  description                      = null
  edition                          = null
  license_type                     = null
  location                         = null
  max_parallel_executions_per_node = null
  name                             = null
  node_size                        = null
  number_of_nodes                  = null
  resource_group_name              = null

  catalog_info = [{
    administrator_login    = null
    administrator_password = null
    pricing_tier           = null
    server_endpoint        = null
  }]

  custom_setup_script = [{
    blob_container_uri = null
    sas_token          = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  vnet_integration = [{
    subnet_name = null
    vnet_id     = null
  }]
}
