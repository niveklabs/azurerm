terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_public_ips" "this" {
  allocation_type     = var.allocation_type
  attached            = var.attached
  name_prefix         = var.name_prefix
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

