module "azurerm_mssql_virtual_machine" {
  source = "./modules/azurerm/r/azurerm_mssql_virtual_machine"

  r_services_enabled               = null
  sql_connectivity_port            = null
  sql_connectivity_type            = null
  sql_connectivity_update_password = null
  sql_connectivity_update_username = null
  sql_license_type                 = null
  tags                             = {}
  virtual_machine_id               = null

  auto_patching = [{
    day_of_week                            = null
    maintenance_window_duration_in_minutes = null
    maintenance_window_starting_hour       = null
  }]

  key_vault_credential = [{
    key_vault_url            = null
    name                     = null
    service_principal_name   = null
    service_principal_secret = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
