terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_machine_learning_workspace" "this" {
  application_insights_id = var.application_insights_id
  container_registry_id   = var.container_registry_id
  description             = var.description
  friendly_name           = var.friendly_name
  key_vault_id            = var.key_vault_id
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name
  sku_name                = var.sku_name
  storage_account_id      = var.storage_account_id
  tags                    = var.tags

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
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

