module "azurerm_application_insights" {
  source = "./azurerm/r/azurerm_application_insights"

  application_type                      = null
  daily_data_cap_in_gb                  = null
  daily_data_cap_notifications_disabled = null
  location                              = null
  name                                  = null
  resource_group_name                   = null
  retention_in_days                     = null
  sampling_percentage                   = null
  tags                                  = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
