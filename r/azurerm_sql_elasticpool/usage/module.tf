module "azurerm_sql_elasticpool" {
  source = "./azurerm/r/azurerm_sql_elasticpool"

  db_dtu_max          = null
  db_dtu_min          = null
  dtu                 = null
  edition             = null
  location            = null
  name                = null
  pool_size           = null
  resource_group_name = null
  server_name         = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
