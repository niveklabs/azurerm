module "azurerm_shared_image_gallery" {
  source = "./azurerm/r/azurerm_shared_image_gallery"

  description         = null
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
