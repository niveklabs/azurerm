module "azurerm_private_endpoint" {
  source = "./modules/azurerm/r/azurerm_private_endpoint"

  location            = null
  name                = null
  resource_group_name = null
  subnet_id           = null
  tags                = {}

  private_service_connection = [{
    is_manual_connection           = null
    name                           = null
    private_connection_resource_id = null
    private_ip_address             = null
    request_message                = null
    subresource_names              = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
