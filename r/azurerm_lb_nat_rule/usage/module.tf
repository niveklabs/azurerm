module "azurerm_lb_nat_rule" {
  source = "./azurerm/r/azurerm_lb_nat_rule"

  backend_port                   = null
  enable_floating_ip             = null
  enable_tcp_reset               = null
  frontend_ip_configuration_name = null
  frontend_port                  = null
  idle_timeout_in_minutes        = null
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
