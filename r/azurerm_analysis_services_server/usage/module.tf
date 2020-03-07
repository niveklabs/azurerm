module "azurerm_analysis_services_server" {
  source = "./azurerm/r/azurerm_analysis_services_server"

  admin_users               = []
  backup_blob_container_uri = null
  enable_power_bi_service   = null
  location                  = null
  name                      = null
  querypool_connection_mode = null
  resource_group_name       = null
  sku                       = null
  tags                      = {}

  ipv4_firewall_rule = [{
    name        = null
    range_end   = null
    range_start = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
