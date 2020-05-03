module "azurerm_kubernetes_cluster" {
  source = "./modules/azurerm/d/azurerm_kubernetes_cluster"

  name                    = null
  private_cluster_enabled = null
  private_link_enabled    = null
  resource_group_name     = null

  timeouts = [{
    read = null
  }]
}
