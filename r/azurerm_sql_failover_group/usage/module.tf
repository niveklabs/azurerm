module "azurerm_sql_failover_group" {
  source = "./azurerm/r/azurerm_sql_failover_group"

  databases           = []
  name                = null
  resource_group_name = null
  server_name         = null
  tags                = {}

  partner_servers = [{
    id       = null
    location = null
    role     = null
  }]

  read_write_endpoint_failover_policy = [{
    grace_minutes = null
    mode          = null
  }]

  readonly_endpoint_failover_policy = [{
    mode = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
