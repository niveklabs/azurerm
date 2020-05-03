module "azurerm_spring_cloud_service" {
  source = "./modules/azurerm/r/azurerm_spring_cloud_service"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  config_server_git_setting = [{
    http_basic_auth = [{
      password = null
      username = null
    }]
    label = null
    repository = [{
      http_basic_auth = [{
        password = null
        username = null
      }]
      label        = null
      name         = null
      pattern      = []
      search_paths = []
      ssh_auth = [{
        host_key                         = null
        host_key_algorithm               = null
        private_key                      = null
        strict_host_key_checking_enabled = null
      }]
      uri = null
    }]
    search_paths = []
    ssh_auth = [{
      host_key                         = null
      host_key_algorithm               = null
      private_key                      = null
      strict_host_key_checking_enabled = null
    }]
    uri = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
