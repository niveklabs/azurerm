module "azurerm_kusto_cluster" {
  source = "./azurerm/r/azurerm_kusto_cluster"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

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
