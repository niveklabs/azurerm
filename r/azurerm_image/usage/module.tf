module "azurerm_image" {
  source = "./azurerm/r/azurerm_image"

  hyper_v_generation        = null
  location                  = null
  name                      = null
  resource_group_name       = null
  source_virtual_machine_id = null
  tags                      = {}
  zone_resilient            = null

  data_disk = [{
    blob_uri        = null
    caching         = null
    lun             = null
    managed_disk_id = null
    size_gb         = null
  }]

  os_disk = [{
    blob_uri        = null
    caching         = null
    managed_disk_id = null
    os_state        = null
    os_type         = null
    size_gb         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
