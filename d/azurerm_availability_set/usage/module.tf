module "azurerm_availability_set" {
  source = "./azurerm/d/azurerm_availability_set"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
