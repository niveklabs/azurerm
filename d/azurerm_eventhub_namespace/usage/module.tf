module "azurerm_eventhub_namespace" {
  source = "./azurerm/d/azurerm_eventhub_namespace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
