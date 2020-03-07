terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_batch_pool" "this" {
  account_name        = var.account_name
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "certificate" {
    for_each = var.certificate
    content {
      id             = certificate.value["id"]
      store_location = certificate.value["store_location"]
      store_name     = certificate.value["store_name"]
      visibility     = certificate.value["visibility"]
    }
  }

  dynamic "network_configuration" {
    for_each = var.network_configuration
    content {
      subnet_id = network_configuration.value["subnet_id"]

      dynamic "endpoint_configuration" {
        for_each = network_configuration.value.endpoint_configuration
        content {

          dynamic "network_security_group_rules" {
            for_each = endpoint_configuration.value.network_security_group_rules
            content {
            }
          }

        }
      }

    }
  }

  dynamic "start_task" {
    for_each = var.start_task
    content {
      command_line         = start_task.value["command_line"]
      environment          = start_task.value["environment"]
      max_task_retry_count = start_task.value["max_task_retry_count"]
      wait_for_success     = start_task.value["wait_for_success"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

