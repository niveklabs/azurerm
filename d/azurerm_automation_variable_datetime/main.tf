terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_automation_variable_datetime" "this" {
  automation_account_name = var.automation_account_name
  name                    = var.name
  resource_group_name     = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

