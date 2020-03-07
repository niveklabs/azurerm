terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_machine_extension" "this" {
  auto_upgrade_minor_version = var.auto_upgrade_minor_version
  name                       = var.name
  protected_settings         = var.protected_settings
  publisher                  = var.publisher
  settings                   = var.settings
  tags                       = var.tags
  type                       = var.type
  type_handler_version       = var.type_handler_version
  virtual_machine_id         = var.virtual_machine_id

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

