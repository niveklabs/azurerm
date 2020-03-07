terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_service_fabric_cluster" "this" {
  add_on_features      = var.add_on_features
  cluster_code_version = var.cluster_code_version
  location             = var.location
  management_endpoint  = var.management_endpoint
  name                 = var.name
  reliability_level    = var.reliability_level
  resource_group_name  = var.resource_group_name
  tags                 = var.tags
  upgrade_mode         = var.upgrade_mode
  vm_image             = var.vm_image

  dynamic "azure_active_directory" {
    for_each = var.azure_active_directory
    content {
      client_application_id  = azure_active_directory.value["client_application_id"]
      cluster_application_id = azure_active_directory.value["cluster_application_id"]
      tenant_id              = azure_active_directory.value["tenant_id"]
    }
  }

  dynamic "certificate" {
    for_each = var.certificate
    content {
      thumbprint           = certificate.value["thumbprint"]
      thumbprint_secondary = certificate.value["thumbprint_secondary"]
      x509_store_name      = certificate.value["x509_store_name"]
    }
  }

  dynamic "certificate_common_names" {
    for_each = var.certificate_common_names
    content {
      x509_store_name = certificate_common_names.value["x509_store_name"]

      dynamic "common_names" {
        for_each = certificate_common_names.value.common_names
        content {
          certificate_common_name       = common_names.value["certificate_common_name"]
          certificate_issuer_thumbprint = common_names.value["certificate_issuer_thumbprint"]
        }
      }

    }
  }

  dynamic "client_certificate_thumbprint" {
    for_each = var.client_certificate_thumbprint
    content {
      is_admin   = client_certificate_thumbprint.value["is_admin"]
      thumbprint = client_certificate_thumbprint.value["thumbprint"]
    }
  }

  dynamic "diagnostics_config" {
    for_each = var.diagnostics_config
    content {
      blob_endpoint              = diagnostics_config.value["blob_endpoint"]
      protected_account_key_name = diagnostics_config.value["protected_account_key_name"]
      queue_endpoint             = diagnostics_config.value["queue_endpoint"]
      storage_account_name       = diagnostics_config.value["storage_account_name"]
      table_endpoint             = diagnostics_config.value["table_endpoint"]
    }
  }

  dynamic "fabric_settings" {
    for_each = var.fabric_settings
    content {
      name       = fabric_settings.value["name"]
      parameters = fabric_settings.value["parameters"]
    }
  }

  dynamic "node_type" {
    for_each = var.node_type
    content {
      capacities                  = node_type.value["capacities"]
      client_endpoint_port        = node_type.value["client_endpoint_port"]
      durability_level            = node_type.value["durability_level"]
      http_endpoint_port          = node_type.value["http_endpoint_port"]
      instance_count              = node_type.value["instance_count"]
      is_primary                  = node_type.value["is_primary"]
      name                        = node_type.value["name"]
      placement_properties        = node_type.value["placement_properties"]
      reverse_proxy_endpoint_port = node_type.value["reverse_proxy_endpoint_port"]

      dynamic "application_ports" {
        for_each = node_type.value.application_ports
        content {
          end_port   = application_ports.value["end_port"]
          start_port = application_ports.value["start_port"]
        }
      }

      dynamic "ephemeral_ports" {
        for_each = node_type.value.ephemeral_ports
        content {
          end_port   = ephemeral_ports.value["end_port"]
          start_port = ephemeral_ports.value["start_port"]
        }
      }

    }
  }

  dynamic "reverse_proxy_certificate" {
    for_each = var.reverse_proxy_certificate
    content {
      thumbprint           = reverse_proxy_certificate.value["thumbprint"]
      thumbprint_secondary = reverse_proxy_certificate.value["thumbprint_secondary"]
      x509_store_name      = reverse_proxy_certificate.value["x509_store_name"]
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

