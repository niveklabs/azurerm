module "azurerm_container_registry" {
  source = "./azurerm/r/azurerm_container_registry"

  admin_enabled            = null
  georeplication_locations = []
  location                 = null
  name                     = null
  network_rule_set = [{
    default_action = null
    ip_rule = [{
      action   = null
      ip_range = null
    }]
    virtual_network = [{
      action    = null
      subnet_id = null
    }]
  }]
  resource_group_name = null
  sku                 = null
  storage_account_id  = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
