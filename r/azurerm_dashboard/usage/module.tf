module "azurerm_dashboard" {
  source = "./azurerm/r/azurerm_dashboard"

  dashboard_properties = null
  location             = null
  name                 = null
  resource_group_name  = null
  tags                 = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
