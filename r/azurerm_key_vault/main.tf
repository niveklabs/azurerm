terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_key_vault" "this" {
  access_policy                   = var.access_policy
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  location                        = var.location
  name                            = var.name
  purge_protection_enabled        = var.purge_protection_enabled
  resource_group_name             = var.resource_group_name
  sku_name                        = var.sku_name
  soft_delete_enabled             = var.soft_delete_enabled
  tags                            = var.tags
  tenant_id                       = var.tenant_id

  dynamic "network_acls" {
    for_each = var.network_acls
    content {
      bypass                     = network_acls.value["bypass"]
      default_action             = network_acls.value["default_action"]
      ip_rules                   = network_acls.value["ip_rules"]
      virtual_network_subnet_ids = network_acls.value["virtual_network_subnet_ids"]
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

