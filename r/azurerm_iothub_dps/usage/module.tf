module "azurerm_iothub_dps" {
  source = "./azurerm/r/azurerm_iothub_dps"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  linked_hub = [{
    allocation_weight       = null
    apply_allocation_policy = null
    connection_string       = null
    hostname                = null
    location                = null
  }]

  sku = [{
    capacity = null
    name     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
