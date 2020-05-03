terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_managed_application" "this" {
  application_definition_id   = var.application_definition_id
  kind                        = var.kind
  location                    = var.location
  managed_resource_group_name = var.managed_resource_group_name
  name                        = var.name
  parameters                  = var.parameters
  resource_group_name         = var.resource_group_name
  tags                        = var.tags

  dynamic "plan" {
    for_each = var.plan
    content {
      name           = plan.value["name"]
      product        = plan.value["product"]
      promotion_code = plan.value["promotion_code"]
      publisher      = plan.value["publisher"]
      version        = plan.value["version"]
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

