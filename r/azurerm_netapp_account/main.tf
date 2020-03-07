terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_netapp_account" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "active_directory" {
    for_each = var.active_directory
    content {
      dns_servers         = active_directory.value["dns_servers"]
      domain              = active_directory.value["domain"]
      organizational_unit = active_directory.value["organizational_unit"]
      password            = active_directory.value["password"]
      smb_server_name     = active_directory.value["smb_server_name"]
      username            = active_directory.value["username"]
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

