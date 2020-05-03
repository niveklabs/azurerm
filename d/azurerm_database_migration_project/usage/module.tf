module "azurerm_database_migration_project" {
  source = "./modules/azurerm/d/azurerm_database_migration_project"

  name                = null
  resource_group_name = null
  service_name        = null

  timeouts = [{
    read = null
  }]
}
