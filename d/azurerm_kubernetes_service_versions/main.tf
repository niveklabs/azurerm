terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_kubernetes_service_versions" "this" {
  include_preview = var.include_preview
  location        = var.location
  version_prefix  = var.version_prefix

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

