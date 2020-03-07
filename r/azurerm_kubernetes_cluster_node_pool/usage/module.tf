module "azurerm_kubernetes_cluster_node_pool" {
  source = "./azurerm/r/azurerm_kubernetes_cluster_node_pool"

  availability_zones    = []
  enable_auto_scaling   = null
  enable_node_public_ip = null
  kubernetes_cluster_id = null
  max_count             = null
  max_pods              = null
  min_count             = null
  name                  = null
  node_count            = null
  node_taints           = []
  os_disk_size_gb       = null
  os_type               = null
  vm_size               = null
  vnet_subnet_id        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
