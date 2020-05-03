terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_spring_cloud_service" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "config_server_git_setting" {
    for_each = var.config_server_git_setting
    content {
      label        = config_server_git_setting.value["label"]
      search_paths = config_server_git_setting.value["search_paths"]
      uri          = config_server_git_setting.value["uri"]

      dynamic "http_basic_auth" {
        for_each = config_server_git_setting.value.http_basic_auth
        content {
          password = http_basic_auth.value["password"]
          username = http_basic_auth.value["username"]
        }
      }

      dynamic "repository" {
        for_each = config_server_git_setting.value.repository
        content {
          label        = repository.value["label"]
          name         = repository.value["name"]
          pattern      = repository.value["pattern"]
          search_paths = repository.value["search_paths"]
          uri          = repository.value["uri"]

          dynamic "http_basic_auth" {
            for_each = repository.value.http_basic_auth
            content {
              password = http_basic_auth.value["password"]
              username = http_basic_auth.value["username"]
            }
          }

          dynamic "ssh_auth" {
            for_each = repository.value.ssh_auth
            content {
              host_key                         = ssh_auth.value["host_key"]
              host_key_algorithm               = ssh_auth.value["host_key_algorithm"]
              private_key                      = ssh_auth.value["private_key"]
              strict_host_key_checking_enabled = ssh_auth.value["strict_host_key_checking_enabled"]
            }
          }

        }
      }

      dynamic "ssh_auth" {
        for_each = config_server_git_setting.value.ssh_auth
        content {
          host_key                         = ssh_auth.value["host_key"]
          host_key_algorithm               = ssh_auth.value["host_key_algorithm"]
          private_key                      = ssh_auth.value["private_key"]
          strict_host_key_checking_enabled = ssh_auth.value["strict_host_key_checking_enabled"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

