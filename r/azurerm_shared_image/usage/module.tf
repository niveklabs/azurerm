module "azurerm_shared_image" {
  source = "./azurerm/r/azurerm_shared_image"

  description           = null
  eula                  = null
  gallery_name          = null
  location              = null
  name                  = null
  os_type               = null
  privacy_statement_uri = null
  release_note_uri      = null
  resource_group_name   = null
  tags                  = {}

  identifier = [{
    offer     = null
    publisher = null
    sku       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
