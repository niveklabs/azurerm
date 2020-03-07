module "azurerm_devspace_controller" {
  source = "./azurerm/r/azurerm_devspace_controller"

  location                                 = null
  name                                     = null
  resource_group_name                      = null
  sku_name                                 = null
  tags                                     = {}
  target_container_host_credentials_base64 = null
  target_container_host_resource_id        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
