module "azurerm_private_link_service" {
  source = "./azurerm/r/azurerm_private_link_service"

  auto_approval_subscription_ids              = []
  enable_proxy_protocol                       = null
  load_balancer_frontend_ip_configuration_ids = []
  location                                    = null
  name                                        = null
  resource_group_name                         = null
  tags                                        = {}
  visibility_subscription_ids                 = []

  nat_ip_configuration = [{
    name                       = null
    primary                    = null
    private_ip_address         = null
    private_ip_address_version = null
    subnet_id                  = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
