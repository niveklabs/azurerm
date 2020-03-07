terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_container_group" "this" {
  dns_name_label      = var.dns_name_label
  ip_address_type     = var.ip_address_type
  location            = var.location
  name                = var.name
  network_profile_id  = var.network_profile_id
  os_type             = var.os_type
  resource_group_name = var.resource_group_name
  restart_policy      = var.restart_policy
  tags                = var.tags

  dynamic "container" {
    for_each = var.container
    content {
      commands                     = container.value["commands"]
      cpu                          = container.value["cpu"]
      environment_variables        = container.value["environment_variables"]
      image                        = container.value["image"]
      memory                       = container.value["memory"]
      name                         = container.value["name"]
      secure_environment_variables = container.value["secure_environment_variables"]

      dynamic "gpu" {
        for_each = container.value.gpu
        content {
          count = gpu.value["count"]
          sku   = gpu.value["sku"]
        }
      }

      dynamic "liveness_probe" {
        for_each = container.value.liveness_probe
        content {
          exec                  = liveness_probe.value["exec"]
          failure_threshold     = liveness_probe.value["failure_threshold"]
          initial_delay_seconds = liveness_probe.value["initial_delay_seconds"]
          period_seconds        = liveness_probe.value["period_seconds"]
          success_threshold     = liveness_probe.value["success_threshold"]
          timeout_seconds       = liveness_probe.value["timeout_seconds"]

          dynamic "http_get" {
            for_each = liveness_probe.value.http_get
            content {
              path   = http_get.value["path"]
              port   = http_get.value["port"]
              scheme = http_get.value["scheme"]
            }
          }

        }
      }

      dynamic "ports" {
        for_each = container.value.ports
        content {
          port     = ports.value["port"]
          protocol = ports.value["protocol"]
        }
      }

      dynamic "readiness_probe" {
        for_each = container.value.readiness_probe
        content {
          exec                  = readiness_probe.value["exec"]
          failure_threshold     = readiness_probe.value["failure_threshold"]
          initial_delay_seconds = readiness_probe.value["initial_delay_seconds"]
          period_seconds        = readiness_probe.value["period_seconds"]
          success_threshold     = readiness_probe.value["success_threshold"]
          timeout_seconds       = readiness_probe.value["timeout_seconds"]

          dynamic "http_get" {
            for_each = readiness_probe.value.http_get
            content {
              path   = http_get.value["path"]
              port   = http_get.value["port"]
              scheme = http_get.value["scheme"]
            }
          }

        }
      }

      dynamic "volume" {
        for_each = container.value.volume
        content {
          mount_path           = volume.value["mount_path"]
          name                 = volume.value["name"]
          read_only            = volume.value["read_only"]
          share_name           = volume.value["share_name"]
          storage_account_key  = volume.value["storage_account_key"]
          storage_account_name = volume.value["storage_account_name"]
        }
      }

    }
  }

  dynamic "diagnostics" {
    for_each = var.diagnostics
    content {

      dynamic "log_analytics" {
        for_each = diagnostics.value.log_analytics
        content {
          log_type      = log_analytics.value["log_type"]
          metadata      = log_analytics.value["metadata"]
          workspace_id  = log_analytics.value["workspace_id"]
          workspace_key = log_analytics.value["workspace_key"]
        }
      }

    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      identity_ids = identity.value["identity_ids"]
      type         = identity.value["type"]
    }
  }

  dynamic "image_registry_credential" {
    for_each = var.image_registry_credential
    content {
      password = image_registry_credential.value["password"]
      server   = image_registry_credential.value["server"]
      username = image_registry_credential.value["username"]
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

