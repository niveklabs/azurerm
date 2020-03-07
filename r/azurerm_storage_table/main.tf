terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_table" "this" {
  name                 = var.name
  storage_account_name = var.storage_account_name

  dynamic "acl" {
    for_each = var.acl
    content {
      id = acl.value["id"]

      dynamic "access_policy" {
        for_each = acl.value.access_policy
        content {
          expiry      = access_policy.value["expiry"]
          permissions = access_policy.value["permissions"]
          start       = access_policy.value["start"]
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

