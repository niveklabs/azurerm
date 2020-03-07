terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_role_assignment" "this" {
  name                             = var.name
  principal_id                     = var.principal_id
  role_definition_id               = var.role_definition_id
  role_definition_name             = var.role_definition_name
  scope                            = var.scope
  skip_service_principal_aad_check = var.skip_service_principal_aad_check

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

