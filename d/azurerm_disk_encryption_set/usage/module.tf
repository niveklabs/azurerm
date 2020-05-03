module "azurerm_disk_encryption_set" {
  source = "./modules/azurerm/d/azurerm_disk_encryption_set"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
