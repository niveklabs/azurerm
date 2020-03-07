module "azurerm_hdinsight_hadoop_cluster" {
  source = "./azurerm/r/azurerm_hdinsight_hadoop_cluster"

  cluster_version     = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}
  tier                = null

  component_version = [{
    hadoop = null
  }]

  gateway = [{
    enabled  = null
    password = null
    username = null
  }]

  roles = [{
    edge_node = [{
      install_script_action = [{
        name = null
        uri  = null
      }]
      target_instance_count = null
      vm_size               = null
    }]
    head_node = [{
      password           = null
      ssh_keys           = []
      subnet_id          = null
      username           = null
      virtual_network_id = null
      vm_size            = null
    }]
    worker_node = [{
      min_instance_count    = null
      password              = null
      ssh_keys              = []
      subnet_id             = null
      target_instance_count = null
      username              = null
      virtual_network_id    = null
      vm_size               = null
    }]
    zookeeper_node = [{
      password           = null
      ssh_keys           = []
      subnet_id          = null
      username           = null
      virtual_network_id = null
      vm_size            = null
    }]
  }]

  storage_account = [{
    is_default           = null
    storage_account_key  = null
    storage_container_id = null
  }]

  storage_account_gen2 = [{
    filesystem_id                = null
    is_default                   = null
    managed_identity_resource_id = null
    storage_resource_id          = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
