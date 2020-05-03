module "azurerm_snapshot" {
  source = "./modules/azurerm/d/azurerm_snapshot"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
