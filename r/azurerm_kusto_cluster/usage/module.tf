module "azurerm_kusto_cluster" {
  source = "./modules/azurerm/r/azurerm_kusto_cluster"

  enable_disk_encryption  = null
  enable_streaming_ingest = null
  location                = null
  name                    = null
  resource_group_name     = null
  tags                    = {}

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
