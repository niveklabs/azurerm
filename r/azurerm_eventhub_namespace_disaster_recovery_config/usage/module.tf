module "azurerm_eventhub_namespace_disaster_recovery_config" {
  source = "./azurerm/r/azurerm_eventhub_namespace_disaster_recovery_config"

  alternate_name       = null
  name                 = null
  namespace_name       = null
  partner_namespace_id = null
  resource_group_name  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
