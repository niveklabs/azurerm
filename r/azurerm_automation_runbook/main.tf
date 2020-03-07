terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_automation_runbook" "this" {
  automation_account_name = var.automation_account_name
  content                 = var.content
  description             = var.description
  location                = var.location
  log_progress            = var.log_progress
  log_verbose             = var.log_verbose
  name                    = var.name
  resource_group_name     = var.resource_group_name
  runbook_type            = var.runbook_type
  tags                    = var.tags

  dynamic "publish_content_link" {
    for_each = var.publish_content_link
    content {
      uri     = publish_content_link.value["uri"]
      version = publish_content_link.value["version"]

      dynamic "hash" {
        for_each = publish_content_link.value.hash
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

