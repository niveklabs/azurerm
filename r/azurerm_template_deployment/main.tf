terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_template_deployment" "this" {
  deployment_mode     = var.deployment_mode
  name                = var.name
  parameters          = var.parameters
  parameters_body     = var.parameters_body
  resource_group_name = var.resource_group_name
  template_body       = var.template_body

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

