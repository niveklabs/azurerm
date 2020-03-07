terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_devspace_controller" "this" {
  location                                 = var.location
  name                                     = var.name
  resource_group_name                      = var.resource_group_name
  sku_name                                 = var.sku_name
  tags                                     = var.tags
  target_container_host_credentials_base64 = var.target_container_host_credentials_base64
  target_container_host_resource_id        = var.target_container_host_resource_id

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

