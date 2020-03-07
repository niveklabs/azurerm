module "azurerm_data_factory_dataset_postgresql" {
  source = "./azurerm/r/azurerm_data_factory_dataset_postgresql"

  additional_properties = {}
  annotations           = []
  data_factory_name     = null
  description           = null
  folder                = null
  linked_service_name   = null
  name                  = null
  parameters            = {}
  resource_group_name   = null
  table_name            = null

  schema_column = [{
    description = null
    name        = null
    type        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
