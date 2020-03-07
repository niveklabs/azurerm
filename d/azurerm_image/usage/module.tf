module "azurerm_image" {
  source = "./azurerm/d/azurerm_image"

  name                = null
  name_regex          = null
  resource_group_name = null
  sort_descending     = null

  timeouts = [{
    read = null
  }]
}
