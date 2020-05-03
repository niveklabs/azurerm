module "azurerm_hdinsight_cluster" {
  source = "./modules/azurerm/d/azurerm_hdinsight_cluster"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
