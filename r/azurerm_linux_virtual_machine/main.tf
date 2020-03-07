terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_linux_virtual_machine" "this" {
  admin_password                  = var.admin_password
  admin_username                  = var.admin_username
  allow_extension_operations      = var.allow_extension_operations
  availability_set_id             = var.availability_set_id
  computer_name                   = var.computer_name
  custom_data                     = var.custom_data
  dedicated_host_id               = var.dedicated_host_id
  disable_password_authentication = var.disable_password_authentication
  eviction_policy                 = var.eviction_policy
  location                        = var.location
  max_bid_price                   = var.max_bid_price
  name                            = var.name
  network_interface_ids           = var.network_interface_ids
  priority                        = var.priority
  provision_vm_agent              = var.provision_vm_agent
  proximity_placement_group_id    = var.proximity_placement_group_id
  resource_group_name             = var.resource_group_name
  size                            = var.size
  source_image_id                 = var.source_image_id
  tags                            = var.tags
  zone                            = var.zone

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

