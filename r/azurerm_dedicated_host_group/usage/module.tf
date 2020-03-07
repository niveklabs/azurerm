module "azurerm_dedicated_host_group" {
  source = "./azurerm/r/azurerm_dedicated_host_group"

  location                    = null
  name                        = null
  platform_fault_domain_count = null
  resource_group_name         = null
  tags                        = {}
  zones                       = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
