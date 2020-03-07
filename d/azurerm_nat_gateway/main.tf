terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_nat_gateway" "this" {
  name                  = var.name
  public_ip_address_ids = var.public_ip_address_ids
  public_ip_prefix_ids  = var.public_ip_prefix_ids
  resource_group_name   = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

