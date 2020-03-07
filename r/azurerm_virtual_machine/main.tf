terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_machine" "this" {
  availability_set_id              = var.availability_set_id
  delete_data_disks_on_termination = var.delete_data_disks_on_termination
  delete_os_disk_on_termination    = var.delete_os_disk_on_termination
  license_type                     = var.license_type
  location                         = var.location
  name                             = var.name
  network_interface_ids            = var.network_interface_ids
  primary_network_interface_id     = var.primary_network_interface_id
  proximity_placement_group_id     = var.proximity_placement_group_id
  resource_group_name              = var.resource_group_name
  tags                             = var.tags
  vm_size                          = var.vm_size
  zones                            = var.zones

  dynamic "additional_capabilities" {
    for_each = var.additional_capabilities
    content {
      ultra_ssd_enabled = additional_capabilities.value["ultra_ssd_enabled"]
    }
  }

  dynamic "boot_diagnostics" {
    for_each = var.boot_diagnostics
    content {
      enabled     = boot_diagnostics.value["enabled"]
      storage_uri = boot_diagnostics.value["storage_uri"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      identity_ids = identity.value["identity_ids"]
      type         = identity.value["type"]
    }
  }

  dynamic "os_profile" {
    for_each = var.os_profile
    content {
      admin_password = os_profile.value["admin_password"]
      admin_username = os_profile.value["admin_username"]
      computer_name  = os_profile.value["computer_name"]
      custom_data    = os_profile.value["custom_data"]
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
      timezone                  = os_profile_windows_config.value["timezone"]

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

  dynamic "storage_data_disk" {
    for_each = var.storage_data_disk
    content {
      caching                   = storage_data_disk.value["caching"]
      create_option             = storage_data_disk.value["create_option"]
      disk_size_gb              = storage_data_disk.value["disk_size_gb"]
      lun                       = storage_data_disk.value["lun"]
      managed_disk_id           = storage_data_disk.value["managed_disk_id"]
      managed_disk_type         = storage_data_disk.value["managed_disk_type"]
      name                      = storage_data_disk.value["name"]
      vhd_uri                   = storage_data_disk.value["vhd_uri"]
      write_accelerator_enabled = storage_data_disk.value["write_accelerator_enabled"]
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

  dynamic "storage_os_disk" {
    for_each = var.storage_os_disk
    content {
      caching                   = storage_os_disk.value["caching"]
      create_option             = storage_os_disk.value["create_option"]
      disk_size_gb              = storage_os_disk.value["disk_size_gb"]
      image_uri                 = storage_os_disk.value["image_uri"]
      managed_disk_id           = storage_os_disk.value["managed_disk_id"]
      managed_disk_type         = storage_os_disk.value["managed_disk_type"]
      name                      = storage_os_disk.value["name"]
      os_type                   = storage_os_disk.value["os_type"]
      vhd_uri                   = storage_os_disk.value["vhd_uri"]
      write_accelerator_enabled = storage_os_disk.value["write_accelerator_enabled"]
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

