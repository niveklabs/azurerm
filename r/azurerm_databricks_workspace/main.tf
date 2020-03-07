terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_databricks_workspace" "this" {
  location                    = var.location
  managed_resource_group_name = var.managed_resource_group_name
  name                        = var.name
  resource_group_name         = var.resource_group_name
  sku                         = var.sku
  tags                        = var.tags

  dynamic "custom_parameters" {
    for_each = var.custom_parameters
    content {
      no_public_ip        = custom_parameters.value["no_public_ip"]
      private_subnet_name = custom_parameters.value["private_subnet_name"]
      public_subnet_name  = custom_parameters.value["public_subnet_name"]
      virtual_network_id  = custom_parameters.value["virtual_network_id"]
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

