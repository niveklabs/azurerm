terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_machine_scale_set" "this" {
  automatic_os_upgrade         = var.automatic_os_upgrade
  eviction_policy              = var.eviction_policy
  health_probe_id              = var.health_probe_id
  license_type                 = var.license_type
  location                     = var.location
  name                         = var.name
  overprovision                = var.overprovision
  priority                     = var.priority
  proximity_placement_group_id = var.proximity_placement_group_id
  resource_group_name          = var.resource_group_name
  single_placement_group       = var.single_placement_group
  tags                         = var.tags
  upgrade_policy_mode          = var.upgrade_policy_mode
  zones                        = var.zones

  dynamic "boot_diagnostics" {
    for_each = var.boot_diagnostics
    content {
      enabled     = boot_diagnostics.value["enabled"]
      storage_uri = boot_diagnostics.value["storage_uri"]
    }
  }

  dynamic "extension" {
    for_each = var.extension
    content {
      auto_upgrade_minor_version = extension.value["auto_upgrade_minor_version"]
      name                       = extension.value["name"]
      protected_settings         = extension.value["protected_settings"]
      provision_after_extensions = extension.value["provision_after_extensions"]
      publisher                  = extension.value["publisher"]
      settings                   = extension.value["settings"]
      type                       = extension.value["type"]
      type_handler_version       = extension.value["type_handler_version"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      identity_ids = identity.value["identity_ids"]
      type         = identity.value["type"]
    }
  }

  dynamic "network_profile" {
    for_each = var.network_profile
    content {
      accelerated_networking    = network_profile.value["accelerated_networking"]
      ip_forwarding             = network_profile.value["ip_forwarding"]
      name                      = network_profile.value["name"]
      network_security_group_id = network_profile.value["network_security_group_id"]
      primary                   = network_profile.value["primary"]

      dynamic "dns_settings" {
        for_each = network_profile.value.dns_settings
        content {
          dns_servers = dns_settings.value["dns_servers"]
        }
      }

      dynamic "ip_configuration" {
        for_each = network_profile.value.ip_configuration
        content {
          application_gateway_backend_address_pool_ids = ip_configuration.value["application_gateway_backend_address_pool_ids"]
          application_security_group_ids               = ip_configuration.value["application_security_group_ids"]
          load_balancer_backend_address_pool_ids       = ip_configuration.value["load_balancer_backend_address_pool_ids"]
          load_balancer_inbound_nat_rules_ids          = ip_configuration.value["load_balancer_inbound_nat_rules_ids"]
          name                                         = ip_configuration.value["name"]
          primary                                      = ip_configuration.value["primary"]
          subnet_id                                    = ip_configuration.value["subnet_id"]

          dynamic "public_ip_address_configuration" {
            for_each = ip_configuration.value.public_ip_address_configuration
            content {
              domain_name_label = public_ip_address_configuration.value["domain_name_label"]
              idle_timeout      = public_ip_address_configuration.value["idle_timeout"]
              name              = public_ip_address_configuration.value["name"]
            }
          }

        }
      }

    }
  }

  dynamic "os_profile" {
    for_each = var.os_profile
    content {
      admin_password       = os_profile.value["admin_password"]
      admin_username       = os_profile.value["admin_username"]
      computer_name_prefix = os_profile.value["computer_name_prefix"]
      custom_data          = os_profile.value["custom_data"]
    }
  }

  dynamic "os_profile_linux_config" {
    for_each = var.os_profile_linux_config
    content {
      disable_password_authentication = os_profile_linux_config.value["disable_password_authentication"]

      dynamic "ssh_keys" {
        for_each = os_profile_linux_config.value.ssh_keys
        content {
          key_data = ssh_keys.value["key_data"]
          path     = ssh_keys.value["path"]
        }
      }

    }
  }

  dynamic "os_profile_secrets" {
    for_each = var.os_profile_secrets
    content {
      source_vault_id = os_profile_secrets.value["source_vault_id"]

      dynamic "vault_certificates" {
        for_each = os_profile_secrets.value.vault_certificates
        content {
          certificate_store = vault_certificates.value["certificate_store"]
          certificate_url   = vault_certificates.value["certificate_url"]
        }
      }

    }
  }

  dynamic "os_profile_windows_config" {
    for_each = var.os_profile_windows_config
    content {
      enable_automatic_upgrades = os_profile_windows_config.value["enable_automatic_upgrades"]
      provision_vm_agent        = os_profile_windows_config.value["provision_vm_agent"]

      dynamic "additional_unattend_config" {
        for_each = os_profile_windows_config.value.additional_unattend_config
        content {
          component    = additional_unattend_config.value["component"]
          content      = additional_unattend_config.value["content"]
          pass         = additional_unattend_config.value["pass"]
          setting_name = additional_unattend_config.value["setting_name"]
        }
      }

      dynamic "winrm" {
        for_each = os_profile_windows_config.value.winrm
        content {
          certificate_url = winrm.value["certificate_url"]
          protocol        = winrm.value["protocol"]
        }
      }

    }
  }

  dynamic "plan" {
    for_each = var.plan
    content {
      name      = plan.value["name"]
      product   = plan.value["product"]
      publisher = plan.value["publisher"]
    }
  }

  dynamic "rolling_upgrade_policy" {
    for_each = var.rolling_upgrade_policy
    content {
      max_batch_instance_percent              = rolling_upgrade_policy.value["max_batch_instance_percent"]
      max_unhealthy_instance_percent          = rolling_upgrade_policy.value["max_unhealthy_instance_percent"]
      max_unhealthy_upgraded_instance_percent = rolling_upgrade_policy.value["max_unhealthy_upgraded_instance_percent"]
      pause_time_between_batches              = rolling_upgrade_policy.value["pause_time_between_batches"]
    }
  }

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      name     = sku.value["name"]
      tier     = sku.value["tier"]
    }
  }

  dynamic "storage_profile_data_disk" {
    for_each = var.storage_profile_data_disk
    content {
      caching           = storage_profile_data_disk.value["caching"]
      create_option     = storage_profile_data_disk.value["create_option"]
      disk_size_gb      = storage_profile_data_disk.value["disk_size_gb"]
      lun               = storage_profile_data_disk.value["lun"]
      managed_disk_type = storage_profile_data_disk.value["managed_disk_type"]
    }
  }

  dynamic "storage_profile_image_reference" {
    for_each = var.storage_profile_image_reference
    content {
      id        = storage_profile_image_reference.value["id"]
      offer     = storage_profile_image_reference.value["offer"]
      publisher = storage_profile_image_reference.value["publisher"]
      sku       = storage_profile_image_reference.value["sku"]
      version   = storage_profile_image_reference.value["version"]
    }
  }

  dynamic "storage_profile_os_disk" {
    for_each = var.storage_profile_os_disk
    content {
      caching           = storage_profile_os_disk.value["caching"]
      create_option     = storage_profile_os_disk.value["create_option"]
      image             = storage_profile_os_disk.value["image"]
      managed_disk_type = storage_profile_os_disk.value["managed_disk_type"]
      name              = storage_profile_os_disk.value["name"]
      os_type           = storage_profile_os_disk.value["os_type"]
      vhd_containers    = storage_profile_os_disk.value["vhd_containers"]
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

