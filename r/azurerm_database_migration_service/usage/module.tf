module "azurerm_database_migration_service" {
  source = "./modules/azurerm/r/azurerm_database_migration_service"

  location            = null
  name                = null
  resource_group_name = null
  sku_name            = null
  subnet_id           = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
