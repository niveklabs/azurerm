terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "this" {
  availability_zones    = var.availability_zones
  enable_auto_scaling   = var.enable_auto_scaling
  enable_node_public_ip = var.enable_node_public_ip
  kubernetes_cluster_id = var.kubernetes_cluster_id
  max_count             = var.max_count
  max_pods              = var.max_pods
  min_count             = var.min_count
  name                  = var.name
  node_count            = var.node_count
  node_taints           = var.node_taints
  os_disk_size_gb       = var.os_disk_size_gb
  os_type               = var.os_type
  vm_size               = var.vm_size
  vnet_subnet_id        = var.vnet_subnet_id

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

