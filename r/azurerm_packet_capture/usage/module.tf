module "azurerm_packet_capture" {
  source = "./azurerm/r/azurerm_packet_capture"

  maximum_bytes_per_packet  = null
  maximum_bytes_per_session = null
  maximum_capture_duration  = null
  name                      = null
  network_watcher_name      = null
  resource_group_name       = null
  target_resource_id        = null

  filter = [{
    local_ip_address  = null
    local_port        = null
    protocol          = null
    remote_ip_address = null
    remote_port       = null
  }]

  storage_location = [{
    file_path          = null
    storage_account_id = null
    storage_path       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
