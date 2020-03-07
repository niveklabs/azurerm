module "azurerm_storage_account_sas" {
  source = "./azurerm/d/azurerm_storage_account_sas"

  connection_string = null
  expiry            = null
  https_only        = null
  start             = null

  permissions = [{
    add     = null
    create  = null
    delete  = null
    list    = null
    process = null
    read    = null
    update  = null
    write   = null
  }]

  resource_types = [{
    container = null
    object    = null
    service   = null
  }]

  services = [{
    blob  = null
    file  = null
    queue = null
    table = null
  }]

  timeouts = [{
    read = null
  }]
}
