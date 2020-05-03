terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_shared_image_versions" "this" {
  gallery_name        = var.gallery_name
  image_name          = var.image_name
  resource_group_name = var.resource_group_name
  tags_filter         = var.tags_filter

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

