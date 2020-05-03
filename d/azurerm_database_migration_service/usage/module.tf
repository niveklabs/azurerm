module "azurerm_database_migration_service" {
  source = "./modules/azurerm/d/azurerm_database_migration_service"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
