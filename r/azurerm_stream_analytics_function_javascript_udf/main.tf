terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_stream_analytics_function_javascript_udf" "this" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  script                    = var.script
  stream_analytics_job_name = var.stream_analytics_job_name

  dynamic "input" {
    for_each = var.input
    content {
      type = input.value["type"]
    }
  }

  dynamic "output" {
    for_each = var.output
    content {
      type = output.value["type"]
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

