module "azurerm_virtual_machine" {
  source = "./azurerm/d/azurerm_virtual_machine"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
