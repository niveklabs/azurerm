terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_notification_hub" "this" {
  location            = var.location
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name

  dynamic "apns_credential" {
    for_each = var.apns_credential
    content {
      application_mode = apns_credential.value["application_mode"]
      bundle_id        = apns_credential.value["bundle_id"]
      key_id           = apns_credential.value["key_id"]
      team_id          = apns_credential.value["team_id"]
      token            = apns_credential.value["token"]
    }
  }

  dynamic "gcm_credential" {
    for_each = var.gcm_credential
    content {
      api_key = gcm_credential.value["api_key"]
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

