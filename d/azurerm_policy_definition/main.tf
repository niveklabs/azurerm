terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_policy_definition" "this" {
  display_name        = var.display_name
  management_group_id = var.management_group_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

