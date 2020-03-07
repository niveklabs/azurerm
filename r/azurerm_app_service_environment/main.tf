terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_environment" "this" {
  front_end_scale_factor       = var.front_end_scale_factor
  internal_load_balancing_mode = var.internal_load_balancing_mode
  name                         = var.name
  pricing_tier                 = var.pricing_tier
  subnet_id                    = var.subnet_id
  tags                         = var.tags

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

