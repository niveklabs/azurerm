module "azurerm_data_lake_store_firewall_rule" {
  source = "./azurerm/r/azurerm_data_lake_store_firewall_rule"

  account_name        = null
  end_ip_address      = null
  name                = null
  resource_group_name = null
  start_ip_address    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
