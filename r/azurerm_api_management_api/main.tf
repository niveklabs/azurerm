terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_api" "this" {
  api_management_name = var.api_management_name
  description         = var.description
  display_name        = var.display_name
  name                = var.name
  path                = var.path
  protocols           = var.protocols
  resource_group_name = var.resource_group_name
  revision            = var.revision
  service_url         = var.service_url
  soap_pass_through   = var.soap_pass_through
  version             = var.version
  version_set_id      = var.version_set_id

  dynamic "import" {
    for_each = var.import
    content {
      content_format = import.value["content_format"]
      content_value  = import.value["content_value"]

      dynamic "wsdl_selector" {
        for_each = import.value.wsdl_selector
        content {
          endpoint_name = wsdl_selector.value["endpoint_name"]
          service_name  = wsdl_selector.value["service_name"]
        }
      }

    }
  }

  dynamic "subscription_key_parameter_names" {
    for_each = var.subscription_key_parameter_names
    content {
      header = subscription_key_parameter_names.value["header"]
      query  = subscription_key_parameter_names.value["query"]
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

