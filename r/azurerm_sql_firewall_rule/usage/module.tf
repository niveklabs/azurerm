module "azurerm_sql_firewall_rule" {
  source = "./modules/azurerm/r/azurerm_sql_firewall_rule"

  end_ip_address      = null
  name                = null
  resource_group_name = null
  server_name         = null
  start_ip_address    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
