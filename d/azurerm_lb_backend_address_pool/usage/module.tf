module "azurerm_lb_backend_address_pool" {
  source = "./modules/azurerm/d/azurerm_lb_backend_address_pool"

  loadbalancer_id = null
  name            = null

  timeouts = [{
    read = null
  }]
}
