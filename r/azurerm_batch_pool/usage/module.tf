module "azurerm_batch_pool" {
  source = "./azurerm/r/azurerm_batch_pool"

  account_name                  = null
  display_name                  = null
  max_tasks_per_node            = null
  metadata                      = {}
  name                          = null
  node_agent_sku_id             = null
  resource_group_name           = null
  stop_pending_resize_operation = null
  vm_size                       = null

  auto_scale = [{
    evaluation_interval = null
    formula             = null
  }]

  certificate = [{
    id             = null
    store_location = null
    store_name     = null
    visibility     = []
  }]

  container_configuration = [{
    container_registries = [{
      password        = null
      registry_server = null
      user_name       = null
    }]
    type = null
  }]

  fixed_scale = [{
    resize_timeout            = null
    target_dedicated_nodes    = null
    target_low_priority_nodes = null
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

  storage_image_reference = [{
    id        = null
    offer     = null
    publisher = null
    sku       = null
    version   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
