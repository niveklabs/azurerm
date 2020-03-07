module "azurerm_mssql_server_security_alert_policy" {
  source = "./azurerm/r/azurerm_mssql_server_security_alert_policy"

  disabled_alerts            = []
  email_account_admins       = null
  email_addresses            = []
  resource_group_name        = null
  retention_days             = null
  server_name                = null
  state                      = null
  storage_account_access_key = null
  storage_endpoint           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
