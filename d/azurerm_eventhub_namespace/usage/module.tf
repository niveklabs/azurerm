module "azurerm_eventhub_namespace" {
  source = "./modules/azurerm/d/azurerm_eventhub_namespace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
