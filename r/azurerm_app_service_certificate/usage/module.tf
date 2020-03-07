module "azurerm_app_service_certificate" {
  source = "./azurerm/r/azurerm_app_service_certificate"

  key_vault_secret_id = null
  location            = null
  name                = null
  password            = null
  pfx_blob            = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
