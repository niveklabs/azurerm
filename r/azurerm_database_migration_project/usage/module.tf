module "azurerm_database_migration_project" {
  source = "./modules/azurerm/r/azurerm_database_migration_project"

  location            = null
  name                = null
  resource_group_name = null
  service_name        = null
  source_platform     = null
  tags                = {}
  target_platform     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
