module "azurerm_managed_disk" {
  source = "./azurerm/d/azurerm_managed_disk"

  name                = null
  resource_group_name = null
  tags                = {}
  zones               = []

  timeouts = [{
    read = null
  }]
}
