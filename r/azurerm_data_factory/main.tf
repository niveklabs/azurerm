terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "github_configuration" {
    for_each = var.github_configuration
    content {
      account_name    = github_configuration.value["account_name"]
      branch_name     = github_configuration.value["branch_name"]
      git_url         = github_configuration.value["git_url"]
      repository_name = github_configuration.value["repository_name"]
      root_folder     = github_configuration.value["root_folder"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
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

  dynamic "vsts_configuration" {
    for_each = var.vsts_configuration
    content {
      account_name    = vsts_configuration.value["account_name"]
      branch_name     = vsts_configuration.value["branch_name"]
      project_name    = vsts_configuration.value["project_name"]
      repository_name = vsts_configuration.value["repository_name"]
      root_folder     = vsts_configuration.value["root_folder"]
      tenant_id       = vsts_configuration.value["tenant_id"]
    }
  }

}

