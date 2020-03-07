module "azurerm_storage_table_entity" {
  source = "./azurerm/r/azurerm_storage_table_entity"

  entity               = {}
  partition_key        = null
  row_key              = null
  storage_account_name = null
  table_name           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
