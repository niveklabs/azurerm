module "azurerm_cost_management_export_resource_group" {
  source = "./modules/azurerm/r/azurerm_cost_management_export_resource_group"

  active                  = null
  name                    = null
  recurrence_period_end   = null
  recurrence_period_start = null
  recurrence_type         = null
  resource_group_id       = null

  delivery_info = [{
    container_name     = null
    root_folder_path   = null
    storage_account_id = null
  }]

  query = [{
    time_frame = null
    type       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
