terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_batch_certificate" "this" {
  account_name         = var.account_name
  certificate          = var.certificate
  format               = var.format
  password             = var.password
  resource_group_name  = var.resource_group_name
  thumbprint           = var.thumbprint
  thumbprint_algorithm = var.thumbprint_algorithm

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

