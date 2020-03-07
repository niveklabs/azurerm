terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_machine_scale_set_extension" "this" {
  auto_upgrade_minor_version   = var.auto_upgrade_minor_version
  force_update_tag             = var.force_update_tag
  name                         = var.name
  protected_settings           = var.protected_settings
  provision_after_extensions   = var.provision_after_extensions
  publisher                    = var.publisher
  settings                     = var.settings
  type                         = var.type
  type_handler_version         = var.type_handler_version
  virtual_machine_scale_set_id = var.virtual_machine_scale_set_id

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

