terraform {
  required_providers {
    azurerm = ">= 2.2.0"
  }
}

resource "azurerm_netapp_volume" "this" {
  account_name        = var.account_name
  location            = var.location
  name                = var.name
  pool_name           = var.pool_name
  protocols           = var.protocols
  resource_group_name = var.resource_group_name
  service_level       = var.service_level
  storage_quota_in_gb = var.storage_quota_in_gb
  subnet_id           = var.subnet_id
  tags                = var.tags
  volume_path         = var.volume_path

  dynamic "export_policy_rule" {
    for_each = var.export_policy_rule
    content {
      allowed_clients   = export_policy_rule.value["allowed_clients"]
      cifs_enabled      = export_policy_rule.value["cifs_enabled"]
      nfsv3_enabled     = export_policy_rule.value["nfsv3_enabled"]
      nfsv4_enabled     = export_policy_rule.value["nfsv4_enabled"]
      protocols_enabled = export_policy_rule.value["protocols_enabled"]
      rule_index        = export_policy_rule.value["rule_index"]
      unix_read_only    = export_policy_rule.value["unix_read_only"]
      unix_read_write   = export_policy_rule.value["unix_read_write"]
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

