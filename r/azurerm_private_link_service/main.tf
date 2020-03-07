terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_private_link_service" "this" {
  auto_approval_subscription_ids              = var.auto_approval_subscription_ids
  enable_proxy_protocol                       = var.enable_proxy_protocol
  load_balancer_frontend_ip_configuration_ids = var.load_balancer_frontend_ip_configuration_ids
  location                                    = var.location
  name                                        = var.name
  resource_group_name                         = var.resource_group_name
  tags                                        = var.tags
  visibility_subscription_ids                 = var.visibility_subscription_ids

  dynamic "nat_ip_configuration" {
    for_each = var.nat_ip_configuration
    content {
      name                       = nat_ip_configuration.value["name"]
      primary                    = nat_ip_configuration.value["primary"]
      private_ip_address         = nat_ip_configuration.value["private_ip_address"]
      private_ip_address_version = nat_ip_configuration.value["private_ip_address_version"]
      subnet_id                  = nat_ip_configuration.value["subnet_id"]
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

