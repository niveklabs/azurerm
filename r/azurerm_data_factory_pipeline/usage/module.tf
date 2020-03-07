module "azurerm_data_factory_pipeline" {
  source = "./azurerm/r/azurerm_data_factory_pipeline"

  annotations         = []
  data_factory_name   = null
  description         = null
  name                = null
  parameters          = {}
  resource_group_name = null
  variables           = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
