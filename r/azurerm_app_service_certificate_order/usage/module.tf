module "azurerm_app_service_certificate_order" {
  source = "./azurerm/r/azurerm_app_service_certificate_order"

  auto_renew          = null
  csr                 = null
  distinguished_name  = null
  key_size            = null
  location            = null
  name                = null
  product_type        = null
  resource_group_name = null
  tags                = {}
  validity_in_years   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
