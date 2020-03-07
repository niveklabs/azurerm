terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_lake_store" "this" {
  encryption_state         = var.encryption_state
  encryption_type          = var.encryption_type
  firewall_allow_azure_ips = var.firewall_allow_azure_ips
  firewall_state           = var.firewall_state
  location                 = var.location
  name                     = var.name
  resource_group_name      = var.resource_group_name
  tags                     = var.tags
  tier                     = var.tier

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

