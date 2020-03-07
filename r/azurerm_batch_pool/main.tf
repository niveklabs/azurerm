terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_batch_pool" "this" {
  account_name                  = var.account_name
  display_name                  = var.display_name
  max_tasks_per_node            = var.max_tasks_per_node
  metadata                      = var.metadata
  name                          = var.name
  node_agent_sku_id             = var.node_agent_sku_id
  resource_group_name           = var.resource_group_name
  stop_pending_resize_operation = var.stop_pending_resize_operation
  vm_size                       = var.vm_size

  dynamic "auto_scale" {
    for_each = var.auto_scale
    content {
      evaluation_interval = auto_scale.value["evaluation_interval"]
      formula             = auto_scale.value["formula"]
    }
  }

  dynamic "certificate" {
    for_each = var.certificate
    content {
      id             = certificate.value["id"]
      store_location = certificate.value["store_location"]
      store_name     = certificate.value["store_name"]
      visibility     = certificate.value["visibility"]
    }
  }

  dynamic "container_configuration" {
    for_each = var.container_configuration
    content {
      container_registries = container_configuration.value["container_registries"]
      type                 = container_configuration.value["type"]
    }
  }

  dynamic "fixed_scale" {
    for_each = var.fixed_scale
    content {
      resize_timeout            = fixed_scale.value["resize_timeout"]
      target_dedicated_nodes    = fixed_scale.value["target_dedicated_nodes"]
      target_low_priority_nodes = fixed_scale.value["target_low_priority_nodes"]
    }
  }

  dynamic "network_configuration" {
    for_each = var.network_configuration
    content {
      subnet_id = network_configuration.value["subnet_id"]

      dynamic "endpoint_configuration" {
        for_each = network_configuration.value.endpoint_configuration
        content {
          backend_port        = endpoint_configuration.value["backend_port"]
          frontend_port_range = endpoint_configuration.value["frontend_port_range"]
          name                = endpoint_configuration.value["name"]
          protocol            = endpoint_configuration.value["protocol"]

          dynamic "network_security_group_rules" {
            for_each = endpoint_configuration.value.network_security_group_rules
            content {
              access                = network_security_group_rules.value["access"]
              priority              = network_security_group_rules.value["priority"]
              source_address_prefix = network_security_group_rules.value["source_address_prefix"]
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

      dynamic "resource_file" {
        for_each = start_task.value.resource_file
        content {
          auto_storage_container_name = resource_file.value["auto_storage_container_name"]
          blob_prefix                 = resource_file.value["blob_prefix"]
          file_mode                   = resource_file.value["file_mode"]
          file_path                   = resource_file.value["file_path"]
          http_url                    = resource_file.value["http_url"]
          storage_container_url       = resource_file.value["storage_container_url"]
        }
      }

      dynamic "user_identity" {
        for_each = start_task.value.user_identity
        content {
          user_name = user_identity.value["user_name"]

          dynamic "auto_user" {
            for_each = user_identity.value.auto_user
            content {
              elevation_level = auto_user.value["elevation_level"]
              scope           = auto_user.value["scope"]
            }
          }

        }
      }

    }
  }

  dynamic "storage_image_reference" {
    for_each = var.storage_image_reference
    content {
      id        = storage_image_reference.value["id"]
      offer     = storage_image_reference.value["offer"]
      publisher = storage_image_reference.value["publisher"]
      sku       = storage_image_reference.value["sku"]
      version   = storage_image_reference.value["version"]
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

