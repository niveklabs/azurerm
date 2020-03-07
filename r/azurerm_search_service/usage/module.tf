module "azurerm_search_service" {
  source = "./azurerm/r/azurerm_search_service"

  location            = null
  name                = null
  partition_count     = null
  replica_count       = null
  resource_group_name = null
  sku                 = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
