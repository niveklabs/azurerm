module "azurerm_public_ip" {
  source = "./modules/azurerm/d/azurerm_public_ip"

  name                = null
  resource_group_name = null
  tags                = {}
  zones               = []

  timeouts = [{
    read = null
  }]
}
