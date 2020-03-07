terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_windows_virtual_machine" "this" {
  admin_password               = var.admin_password
  admin_username               = var.admin_username
  allow_extension_operations   = var.allow_extension_operations
  availability_set_id          = var.availability_set_id
  computer_name                = var.computer_name
  custom_data                  = var.custom_data
  dedicated_host_id            = var.dedicated_host_id
  enable_automatic_updates     = var.enable_automatic_updates
  eviction_policy              = var.eviction_policy
  license_type                 = var.license_type
  location                     = var.location
  max_bid_price                = var.max_bid_price
  name                         = var.name
  network_interface_ids        = var.network_interface_ids
  priority                     = var.priority
  provision_vm_agent           = var.provision_vm_agent
  proximity_placement_group_id = var.proximity_placement_group_id
  resource_group_name          = var.resource_group_name
  size                         = var.size
  source_image_id              = var.source_image_id
  tags                         = var.tags
  timezone                     = var.timezone
  zone                         = var.zone

  dynamic "additional_capabilities" {
    for_each = var.additional_capabilities
    content {
      ultra_ssd_enabled = additional_capabilities.value["ultra_ssd_enabled"]
    }
  }

  dynamic "additional_unattend_content" {
    for_each = var.additional_unattend_content
    content {
      content = additional_unattend_content.value["content"]
      setting = additional_unattend_content.value["setting"]
    }
  }

  dynamic "boot_diagnostics" {
    for_each = var.boot_diagnostics
    content {
      storage_account_uri = boot_diagnostics.value["storage_account_uri"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      identity_ids = identity.value["identity_ids"]
      type         = identity.value["type"]
    }
  }

  dynamic "os_disk" {
    for_each = var.os_disk
    content {
      caching                   = os_disk.value["caching"]
      disk_encryption_set_id    = os_disk.value["disk_encryption_set_id"]
      disk_size_gb              = os_disk.value["disk_size_gb"]
      name                      = os_disk.value["name"]
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

  dynamic "secret" {
    for_each = var.secret
    content {
      key_vault_id = secret.value["key_vault_id"]

      dynamic "certificate" {
        for_each = secret.value.certificate
        content {
          store = certificate.value["store"]
          url   = certificate.value["url"]
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

  dynamic "winrm_listener" {
    for_each = var.winrm_listener
    content {
      certificate_url = winrm_listener.value["certificate_url"]
      protocol        = winrm_listener.value["protocol"]
    }
  }

}

