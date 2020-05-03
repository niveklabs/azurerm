terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_kubernetes_cluster" "this" {
  name                    = var.name
  private_cluster_enabled = var.private_cluster_enabled
  private_link_enabled    = var.private_link_enabled
  resource_group_name     = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

