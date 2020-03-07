module "azurerm_lb_rule" {
  source = "./azurerm/r/azurerm_lb_rule"

  backend_address_pool_id        = null
  backend_port                   = null
  disable_outbound_snat          = null
  enable_floating_ip             = null
  enable_tcp_reset               = null
  frontend_ip_configuration_name = null
  frontend_port                  = null
  idle_timeout_in_minutes        = null
  load_distribution              = null
  loadbalancer_id                = null
  name                           = null
  probe_id                       = null
  protocol                       = null
  resource_group_name            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
