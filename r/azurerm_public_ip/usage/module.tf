module "azurerm_public_ip" {
  source = "./azurerm/r/azurerm_public_ip"

  allocation_method       = null
  domain_name_label       = null
  idle_timeout_in_minutes = null
  ip_version              = null
  location                = null
  name                    = null
  public_ip_prefix_id     = null
  resource_group_name     = null
  reverse_fqdn            = null
  sku                     = null
  tags                    = {}
  zones                   = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
