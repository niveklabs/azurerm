module "azurerm_shared_image_version" {
  source = "./azurerm/d/azurerm_shared_image_version"

  gallery_name        = null
  image_name          = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
