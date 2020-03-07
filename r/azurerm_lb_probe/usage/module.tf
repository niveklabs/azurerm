module "azurerm_lb_probe" {
  source = "./azurerm/r/azurerm_lb_probe"

  interval_in_seconds = null
  loadbalancer_id     = null
  name                = null
  number_of_probes    = null
  port                = null
  protocol            = null
  request_path        = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
