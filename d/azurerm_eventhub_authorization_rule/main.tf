terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_eventhub_authorization_rule" "this" {
  eventhub_name       = var.eventhub_name
  listen              = var.listen
  manage              = var.manage
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
  send                = var.send

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

