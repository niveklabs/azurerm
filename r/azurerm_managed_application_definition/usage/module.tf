module "azurerm_managed_application_definition" {
  source = "./modules/azurerm/r/azurerm_managed_application_definition"

  create_ui_definition = null
  description          = null
  display_name         = null
  location             = null
  lock_level           = null
  main_template        = null
  name                 = null
  package_enabled      = null
  package_file_uri     = null
  resource_group_name  = null
  tags                 = {}

  authorization = [{
    role_definition_id   = null
    service_principal_id = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
