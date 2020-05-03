terraform {
  required_providers {
    azurerm = ">= 2.7.0"
  }
}

resource "azurerm_iotcentral_application" "this" {
  display_name        = var.display_name
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  sub_domain          = var.sub_domain
  tags                = var.tags
  template            = var.template

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

