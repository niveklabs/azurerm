terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory_integration_runtime_managed" "this" {
  data_factory_name                = var.data_factory_name
  description                      = var.description
  edition                          = var.edition
  license_type                     = var.license_type
  location                         = var.location
  max_parallel_executions_per_node = var.max_parallel_executions_per_node
  name                             = var.name
  node_size                        = var.node_size
  number_of_nodes                  = var.number_of_nodes
  resource_group_name              = var.resource_group_name

  dynamic "catalog_info" {
    for_each = var.catalog_info
    content {
      administrator_login    = catalog_info.value["administrator_login"]
      administrator_password = catalog_info.value["administrator_password"]
      pricing_tier           = catalog_info.value["pricing_tier"]
      server_endpoint        = catalog_info.value["server_endpoint"]
    }
  }

  dynamic "custom_setup_script" {
    for_each = var.custom_setup_script
    content {
      blob_container_uri = custom_setup_script.value["blob_container_uri"]
      sas_token          = custom_setup_script.value["sas_token"]
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

  dynamic "vnet_integration" {
    for_each = var.vnet_integration
    content {
      subnet_name = vnet_integration.value["subnet_name"]
      vnet_id     = vnet_integration.value["vnet_id"]
    }
  }

}

