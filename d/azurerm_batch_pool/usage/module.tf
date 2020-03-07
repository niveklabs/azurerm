module "azurerm_batch_pool" {
  source = "./azurerm/d/azurerm_batch_pool"

  account_name        = null
  name                = null
  resource_group_name = null

  certificate = [{
    id             = null
    store_location = null
    store_name     = null
    visibility     = []
  }]

  network_configuration = [{
    endpoint_configuration = [{
      backend_port        = null
      frontend_port_range = null
      name                = null
      network_security_group_rules = [{
        access                = null
        priority              = null
        source_address_prefix = null
      }]
      protocol = null
    }]
    subnet_id = null
  }]

  start_task = [{
    command_line         = null
    environment          = {}
    max_task_retry_count = null
    resource_file = [{
      auto_storage_container_name = null
      blob_prefix                 = null
      file_mode                   = null
      file_path                   = null
      http_url                    = null
      storage_container_url       = null
    }]
    user_identity = [{
      auto_user = [{
        elevation_level = null
        scope           = null
      }]
      user_name = null
    }]
    wait_for_success = null
  }]

  timeouts = [{
    read = null
  }]
}
