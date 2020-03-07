module "azurerm_data_factory_trigger_schedule" {
  source = "./azurerm/r/azurerm_data_factory_trigger_schedule"

  annotations         = []
  data_factory_name   = null
  end_time            = null
  frequency           = null
  interval            = null
  name                = null
  pipeline_name       = null
  pipeline_parameters = {}
  resource_group_name = null
  start_time          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
