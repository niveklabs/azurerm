module "azurerm_data_lake_store" {
  source = "./azurerm/r/azurerm_data_lake_store"

  encryption_state         = null
  encryption_type          = null
  firewall_allow_azure_ips = null
  firewall_state           = null
  location                 = null
  name                     = null
  resource_group_name      = null
  tags                     = {}
  tier                     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
