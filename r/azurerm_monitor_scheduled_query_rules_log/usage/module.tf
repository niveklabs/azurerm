module "azurerm_monitor_scheduled_query_rules_log" {
  source = "./modules/azurerm/r/azurerm_monitor_scheduled_query_rules_log"

  authorized_resource_ids = []
  data_source_id          = null
  description             = null
  enabled                 = null
  location                = null
  name                    = null
  resource_group_name     = null
  tags                    = {}

  criteria = [{
    dimension = [{
      name     = null
      operator = null
      values   = []
    }]
    metric_name = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
