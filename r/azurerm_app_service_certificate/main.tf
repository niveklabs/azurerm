terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_certificate" "this" {
  key_vault_secret_id = var.key_vault_secret_id
  location            = var.location
  name                = var.name
  password            = var.password
  pfx_blob            = var.pfx_blob
  resource_group_name = var.resource_group_name
  tags                = var.tags

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

