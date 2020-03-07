module "azurerm_dedicated_host_group" {
  source = "./azurerm/d/azurerm_dedicated_host_group"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
