module "azurerm_api_management_api" {
  source = "./azurerm/r/azurerm_api_management_api"

  api_management_name = null
  description         = null
  display_name        = null
  name                = null
  path                = null
  protocols           = []
  resource_group_name = null
  revision            = null
  service_url         = null
  soap_pass_through   = null
  version             = null
  version_set_id      = null

  import = [{
    content_format = null
    content_value  = null
    wsdl_selector = [{
      endpoint_name = null
      service_name  = null
    }]
  }]

  subscription_key_parameter_names = [{
    header = null
    query  = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
