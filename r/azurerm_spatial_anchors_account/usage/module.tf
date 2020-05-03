module "azurerm_spatial_anchors_account" {
  source = "./modules/azurerm/r/azurerm_spatial_anchors_account"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
