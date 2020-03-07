module "azurerm_availability_set" {
  source = "./azurerm/r/azurerm_availability_set"

  location                     = null
  managed                      = null
  name                         = null
  platform_fault_domain_count  = null
  platform_update_domain_count = null
  proximity_placement_group_id = null
  resource_group_name          = null
  tags                         = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
