module "azurerm_relay_hybrid_connection" {
  source = "./azurerm/r/azurerm_relay_hybrid_connection"

  name                          = null
  relay_namespace_name          = null
  requires_client_authorization = null
  resource_group_name           = null
  user_metadata                 = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
