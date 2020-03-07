terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_certificate_order" "this" {
  auto_renew          = var.auto_renew
  csr                 = var.csr
  distinguished_name  = var.distinguished_name
  key_size            = var.key_size
  location            = var.location
  name                = var.name
  product_type        = var.product_type
  resource_group_name = var.resource_group_name
  tags                = var.tags
  validity_in_years   = var.validity_in_years

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

