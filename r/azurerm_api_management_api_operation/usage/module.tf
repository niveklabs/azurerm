module "azurerm_api_management_api_operation" {
  source = "./azurerm/r/azurerm_api_management_api_operation"

  api_management_name = null
  api_name            = null
  description         = null
  display_name        = null
  method              = null
  operation_id        = null
  resource_group_name = null
  url_template        = null

  request = [{
    description = null
    header = [{
      default_value = null
      description   = null
      name          = null
      required      = null
      type          = null
      values        = []
    }]
    query_parameter = [{
      default_value = null
      description   = null
      name          = null
      required      = null
      type          = null
      values        = []
    }]
    representation = [{
      content_type = null
      form_parameter = [{
        default_value = null
        description   = null
        name          = null
        required      = null
        type          = null
        values        = []
      }]
      sample    = null
      schema_id = null
      type_name = null
    }]
  }]

  response = [{
    description = null
    header = [{
      default_value = null
      description   = null
      name          = null
      required      = null
      type          = null
      values        = []
    }]
    representation = [{
      content_type = null
      form_parameter = [{
        default_value = null
        description   = null
        name          = null
        required      = null
        type          = null
        values        = []
      }]
      sample    = null
      schema_id = null
      type_name = null
    }]
    status_code = null
  }]

  template_parameter = [{
    default_value = null
    description   = null
    name          = null
    required      = null
    type          = null
    values        = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
