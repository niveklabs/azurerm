module "azurerm_kusto_eventhub_data_connection" {
  source = "./azurerm/r/azurerm_kusto_eventhub_data_connection"

  cluster_name        = null
  consumer_group      = null
  data_format         = null
  database_name       = null
  eventhub_id         = null
  location            = null
  mapping_rule_name   = null
  name                = null
  resource_group_name = null
  table_name          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
