terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_source_control_token" "this" {
  token        = var.token
  token_secret = var.token_secret
  type         = var.type

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

