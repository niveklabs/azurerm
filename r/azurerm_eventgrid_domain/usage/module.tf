module "azurerm_eventgrid_domain" {
  source = "./azurerm/r/azurerm_eventgrid_domain"

  input_schema        = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  input_mapping_default_values = [{
    data_version = null
    event_type   = null
    subject      = null
  }]

  input_mapping_fields = [{
    data_version = null
    event_time   = null
    event_type   = null
    id           = null
    subject      = null
    topic        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
