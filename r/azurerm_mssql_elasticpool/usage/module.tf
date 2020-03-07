module "azurerm_mssql_elasticpool" {
  source = "./azurerm/r/azurerm_mssql_elasticpool"

  location            = null
  max_size_bytes      = null
  max_size_gb         = null
  name                = null
  resource_group_name = null
  server_name         = null
  tags                = {}
  zone_redundant      = null

  per_database_settings = [{
    max_capacity = null
    min_capacity = null
  }]

  sku = [{
    capacity = null
    family   = null
    name     = null
    tier     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
