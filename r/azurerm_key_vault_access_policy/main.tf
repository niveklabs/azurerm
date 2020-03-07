terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_key_vault_access_policy" "this" {
  application_id          = var.application_id
  certificate_permissions = var.certificate_permissions
  key_permissions         = var.key_permissions
  key_vault_id            = var.key_vault_id
  object_id               = var.object_id
  secret_permissions      = var.secret_permissions
  storage_permissions     = var.storage_permissions
  tenant_id               = var.tenant_id

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

