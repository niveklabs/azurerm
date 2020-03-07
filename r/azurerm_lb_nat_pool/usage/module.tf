module "azurerm_lb_nat_pool" {
  source = "./azurerm/r/azurerm_lb_nat_pool"

  backend_port                   = null
  frontend_ip_configuration_name = null
  frontend_port_end              = null
  frontend_port_start            = null
  loadbalancer_id                = null
  name                           = null
  protocol                       = null
  resource_group_name            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
