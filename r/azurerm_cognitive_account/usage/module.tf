module "azurerm_cognitive_account" {
  source = "./modules/azurerm/r/azurerm_cognitive_account"

  kind                 = null
  location             = null
  name                 = null
  qna_runtime_endpoint = null
  resource_group_name  = null
  sku_name             = null
  tags                 = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
