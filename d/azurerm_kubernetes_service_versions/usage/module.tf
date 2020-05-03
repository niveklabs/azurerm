module "azurerm_kubernetes_service_versions" {
  source = "./modules/azurerm/d/azurerm_kubernetes_service_versions"

  include_preview = null
  location        = null
  version_prefix  = null

  timeouts = [{
    read = null
  }]
}
