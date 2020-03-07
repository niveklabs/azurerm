module "azurerm_data_lake_store_file" {
  source = "./azurerm/r/azurerm_data_lake_store_file"

  account_name     = null
  local_file_path  = null
  remote_file_path = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
