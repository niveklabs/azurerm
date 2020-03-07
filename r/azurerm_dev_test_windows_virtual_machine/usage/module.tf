module "azurerm_dev_test_windows_virtual_machine" {
  source = "./azurerm/r/azurerm_dev_test_windows_virtual_machine"

  allow_claim                = null
  disallow_public_ip_address = null
  lab_name                   = null
  lab_subnet_name            = null
  lab_virtual_network_id     = null
  location                   = null
  name                       = null
  notes                      = null
  password                   = null
  resource_group_name        = null
  size                       = null
  storage_type               = null
  tags                       = {}
  username                   = null

  gallery_image_reference = [{
    offer     = null
    publisher = null
    sku       = null
    version   = null
  }]

  inbound_nat_rule = [{
    backend_port  = null
    frontend_port = null
    protocol      = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
