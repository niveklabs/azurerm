module "azurerm_lb_outbound_rule" {
  source = "./azurerm/r/azurerm_lb_outbound_rule"

  allocated_outbound_ports = null
  backend_address_pool_id  = null
  enable_tcp_reset         = null
  idle_timeout_in_minutes  = null
  loadbalancer_id          = null
  name                     = null
  protocol                 = null
  resource_group_name      = null

  frontend_ip_configuration = [{
    id   = null
    name = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
