terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_iothub_dps_shared_access_policy" "this" {
  iothub_dps_name     = var.iothub_dps_name
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

