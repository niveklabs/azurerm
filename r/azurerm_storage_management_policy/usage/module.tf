module "azurerm_storage_management_policy" {
  source = "./azurerm/r/azurerm_storage_management_policy"

  storage_account_id = null

  rule = [{
    actions = [{
      base_blob = [{
        delete_after_days_since_modification_greater_than          = null
        tier_to_archive_after_days_since_modification_greater_than = null
        tier_to_cool_after_days_since_modification_greater_than    = null
      }]
      snapshot = [{
        delete_after_days_since_creation_greater_than = null
      }]
    }]
    enabled = null
    filters = [{
      blob_types   = []
      prefix_match = []
    }]
    name = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
