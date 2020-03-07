terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_container_registry_webhook" "this" {
  actions             = var.actions
  custom_headers      = var.custom_headers
  location            = var.location
  name                = var.name
  registry_name       = var.registry_name
  resource_group_name = var.resource_group_name
  scope               = var.scope
  service_uri         = var.service_uri
  status              = var.status
  tags                = var.tags

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

