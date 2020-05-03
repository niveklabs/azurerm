module "azurerm_shared_image_versions" {
  source = "./modules/azurerm/d/azurerm_shared_image_versions"

  gallery_name        = null
  image_name          = null
  resource_group_name = null
  tags_filter         = {}

  timeouts = [{
    read = null
  }]
}
