module "azurerm_lb_backend_address_pool" {
  source = "./azurerm/r/azurerm_lb_backend_address_pool"

  loadbalancer_id     = null
  name                = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
