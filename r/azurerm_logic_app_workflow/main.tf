terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_logic_app_workflow" "this" {
  location            = var.location
  name                = var.name
  parameters          = var.parameters
  resource_group_name = var.resource_group_name
  tags                = var.tags
  workflow_schema     = var.workflow_schema
  workflow_version    = var.workflow_version

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

