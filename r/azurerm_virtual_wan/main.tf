terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_wan" "this" {
  allow_branch_to_branch_traffic    = var.allow_branch_to_branch_traffic
  allow_vnet_to_vnet_traffic        = var.allow_vnet_to_vnet_traffic
  disable_vpn_encryption            = var.disable_vpn_encryption
  location                          = var.location
  name                              = var.name
  office365_local_breakout_category = var.office365_local_breakout_category
  resource_group_name               = var.resource_group_name
  tags                              = var.tags

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

