module "azurerm_storage_data_lake_gen2_filesystem" {
  source = "./azurerm/r/azurerm_storage_data_lake_gen2_filesystem"

  name               = null
  properties         = {}
  storage_account_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
