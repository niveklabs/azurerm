module "azurerm_dedicated_host" {
  source = "./azurerm/d/azurerm_dedicated_host"

  dedicated_host_group_name = null
  name                      = null
  resource_group_name       = null

  timeouts = [{
    read = null
  }]
}
