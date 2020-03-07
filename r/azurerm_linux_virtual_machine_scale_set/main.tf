terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_linux_virtual_machine_scale_set" "this" {
  admin_password                                    = var.admin_password
  admin_username                                    = var.admin_username
  computer_name_prefix                              = var.computer_name_prefix
  custom_data                                       = var.custom_data
  disable_password_authentication                   = var.disable_password_authentication
  do_not_run_extensions_on_overprovisioned_machines = var.do_not_run_extensions_on_overprovisioned_machines
  eviction_policy                                   = var.eviction_policy
  health_probe_id                                   = var.health_probe_id
  instances                                         = var.instances
  location                                          = var.location
  max_bid_price                                     = var.max_bid_price
  name                                              = var.name
  overprovision                                     = var.overprovision
  priority                                          = var.priority
  provision_vm_agent                                = var.provision_vm_agent
  proximity_placement_group_id                      = var.proximity_placement_group_id
  resource_group_name                               = var.resource_group_name
  single_placement_group                            = var.single_placement_group
  sku                                               = var.sku
  source_image_id                                   = var.source_image_id
  tags                                              = var.tags
  upgrade_mode                                      = var.upgrade_mode
  zone_balance                                      = var.zone_balance
  zones                                             = var.zones

  dynamic "additional_capabilities" {
    for_each = var.additional_capabilities
    content {
      ultra_ssd_enabled = additional_capabilities.value["ultra_ssd_enabled"]
    }
  }

  dynamic "admin_ssh_key" {
    for_each = var.admin_ssh_key
    content {
      public_key = admin_ssh_key.value["public_key"]
      username   = admin_ssh_key.value["username"]
    }
  }

  dynamic "automatic_os_upgrade_policy" {
    for_each = var.automatic_os_upgrade_policy
    content {
      disable_automatic_rollback  = automatic_os_upgrade_policy.value["disable_automatic_rollback"]
      enable_automatic_os_upgrade = automatic_os_upgrade_policy.value["enable_automatic_os_upgrade"]
    }
  }

  dynamic "boot_diagnostics" {
    for_each = var.boot_diagnostics
    content {
      storage_account_uri = boot_diagnostics.value["storage_account_uri"]
    }
  }

  dynamic "data_disk" {
    for_each = var.data_disk
    content {
      caching                   = data_disk.value["caching"]
      disk_encryption_set_id    = data_disk.value["disk_encryption_set_id"]
      disk_size_gb              = data_disk.value["disk_size_gb"]
      lun                       = data_disk.value["lun"]
      storage_account_type      = data_disk.value["storage_account_type"]
      write_accelerator_enabled = data_disk.value["write_accelerator_enabled"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      identity_ids = identity.value["identity_ids"]
      type         = identity.value["type"]
    }
  }

  dynamic "network_interface" {
    for_each = var.network_interface
    content {
      dns_servers                   = network_interface.value["dns_servers"]
      enable_accelerated_networking = network_interface.value["enable_accelerated_networking"]
      enable_ip_forwarding          = network_interface.value["enable_ip_forwarding"]
      name                          = network_interface.value["name"]
      network_security_group_id     = network_interface.value["network_security_group_id"]
      primary                       = network_interface.value["primary"]

      dynamic "ip_configuration" {
        for_each = network_interface.value.ip_configuration
        content {
          application_gateway_backend_address_pool_ids = ip_configuration.value["application_gateway_backend_address_pool_ids"]
          application_security_group_ids               = ip_configuration.value["application_security_group_ids"]
          load_balancer_backend_address_pool_ids       = ip_configuration.value["load_balancer_backend_address_pool_ids"]
          load_balancer_inbound_nat_rules_ids          = ip_configuration.value["load_balancer_inbound_nat_rules_ids"]
          name                                         = ip_configuration.value["name"]
          primary                                      = ip_configuration.value["primary"]
          subnet_id                                    = ip_configuration.value["subnet_id"]
          version                                      = ip_configuration.value["version"]

          dynamic "public_ip_address" {
            for_each = ip_configuration.value.public_ip_address
            content {
              domain_name_label       = public_ip_address.value["domain_name_label"]
              idle_timeout_in_minutes = public_ip_address.value["idle_timeout_in_minutes"]
              name                    = public_ip_address.value["name"]
              public_ip_prefix_id     = public_ip_address.value["public_ip_prefix_id"]

              dynamic "ip_tag" {
                for_each = public_ip_address.value.ip_tag
                content {
                  tag  = ip_tag.value["tag"]
                  type = ip_tag.value["type"]
                }
              }

            }
          }

        }
      }

    }
  }

  dynamic "os_disk" {
    for_each = var.os_disk
    content {
      caching                   = os_disk.value["caching"]
      disk_encryption_set_id    = os_disk.value["disk_encryption_set_id"]
      disk_size_gb              = os_disk.value["disk_size_gb"]
      storage_account_type      = os_disk.value["storage_account_type"]
      write_accelerator_enabled = os_disk.value["write_accelerator_enabled"]

      dynamic "diff_disk_settings" {
        for_each = os_disk.value.diff_disk_settings
        content {
          option = diff_disk_settings.value["option"]
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

  dynamic "secret" {
    for_each = var.secret
    content {
      key_vault_id = secret.value["key_vault_id"]

      dynamic "certificate" {
        for_each = secret.value.certificate
        content {
          url = certificate.value["url"]
        }
      }

    }
  }

  dynamic "source_image_reference" {
    for_each = var.source_image_reference
    content {
      offer     = source_image_reference.value["offer"]
      publisher = source_image_reference.value["publisher"]
      sku       = source_image_reference.value["sku"]
      version   = source_image_reference.value["version"]
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

