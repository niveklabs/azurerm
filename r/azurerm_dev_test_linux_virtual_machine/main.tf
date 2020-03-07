terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dev_test_linux_virtual_machine" "this" {
  allow_claim                = var.allow_claim
  disallow_public_ip_address = var.disallow_public_ip_address
  lab_name                   = var.lab_name
  lab_subnet_name            = var.lab_subnet_name
  lab_virtual_network_id     = var.lab_virtual_network_id
  location                   = var.location
  name                       = var.name
  notes                      = var.notes
  password                   = var.password
  resource_group_name        = var.resource_group_name
  size                       = var.size
  ssh_key                    = var.ssh_key
  storage_type               = var.storage_type
  tags                       = var.tags
  username                   = var.username

  dynamic "gallery_image_reference" {
    for_each = var.gallery_image_reference
    content {
      offer     = gallery_image_reference.value["offer"]
      publisher = gallery_image_reference.value["publisher"]
      sku       = gallery_image_reference.value["sku"]
      version   = gallery_image_reference.value["version"]
    }
  }

  dynamic "inbound_nat_rule" {
    for_each = var.inbound_nat_rule
    content {
      backend_port = inbound_nat_rule.value["backend_port"]
      protocol     = inbound_nat_rule.value["protocol"]
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

