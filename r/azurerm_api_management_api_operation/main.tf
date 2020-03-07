terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_api_operation" "this" {
  api_management_name = var.api_management_name
  api_name            = var.api_name
  description         = var.description
  display_name        = var.display_name
  method              = var.method
  operation_id        = var.operation_id
  resource_group_name = var.resource_group_name
  url_template        = var.url_template

  dynamic "request" {
    for_each = var.request
    content {
      description = request.value["description"]

      dynamic "header" {
        for_each = request.value.header
        content {
          default_value = header.value["default_value"]
          description   = header.value["description"]
          name          = header.value["name"]
          required      = header.value["required"]
          type          = header.value["type"]
          values        = header.value["values"]
        }
      }

      dynamic "query_parameter" {
        for_each = request.value.query_parameter
        content {
          default_value = query_parameter.value["default_value"]
          description   = query_parameter.value["description"]
          name          = query_parameter.value["name"]
          required      = query_parameter.value["required"]
          type          = query_parameter.value["type"]
          values        = query_parameter.value["values"]
        }
      }

      dynamic "representation" {
        for_each = request.value.representation
        content {
          content_type = representation.value["content_type"]
          sample       = representation.value["sample"]
          schema_id    = representation.value["schema_id"]
          type_name    = representation.value["type_name"]

          dynamic "form_parameter" {
            for_each = representation.value.form_parameter
            content {
              default_value = form_parameter.value["default_value"]
              description   = form_parameter.value["description"]
              name          = form_parameter.value["name"]
              required      = form_parameter.value["required"]
              type          = form_parameter.value["type"]
              values        = form_parameter.value["values"]
            }
          }

        }
      }

    }
  }

  dynamic "response" {
    for_each = var.response
    content {
      description = response.value["description"]
      status_code = response.value["status_code"]

      dynamic "header" {
        for_each = response.value.header
        content {
          default_value = header.value["default_value"]
          description   = header.value["description"]
          name          = header.value["name"]
          required      = header.value["required"]
          type          = header.value["type"]
          values        = header.value["values"]
        }
      }

      dynamic "representation" {
        for_each = response.value.representation
        content {
          content_type = representation.value["content_type"]
          sample       = representation.value["sample"]
          schema_id    = representation.value["schema_id"]
          type_name    = representation.value["type_name"]

          dynamic "form_parameter" {
            for_each = representation.value.form_parameter
            content {
              default_value = form_parameter.value["default_value"]
              description   = form_parameter.value["description"]
              name          = form_parameter.value["name"]
              required      = form_parameter.value["required"]
              type          = form_parameter.value["type"]
              values        = form_parameter.value["values"]
            }
          }

        }
      }

    }
  }

  dynamic "template_parameter" {
    for_each = var.template_parameter
    content {
      default_value = template_parameter.value["default_value"]
      description   = template_parameter.value["description"]
      name          = template_parameter.value["name"]
      required      = template_parameter.value["required"]
      type          = template_parameter.value["type"]
      values        = template_parameter.value["values"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

