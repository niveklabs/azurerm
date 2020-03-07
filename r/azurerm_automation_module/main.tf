terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_module" "this" {
  automation_account_name = var.automation_account_name
  name                    = var.name
  resource_group_name     = var.resource_group_name

  dynamic "module_link" {
    for_each = var.module_link
    content {
      uri = module_link.value["uri"]

      dynamic "hash" {
        for_each = module_link.value.hash
        content {
          algorithm = hash.value["algorithm"]
          value     = hash.value["value"]
        }
      }

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

