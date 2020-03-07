module "azurerm_windows_virtual_machine" {
  source = "./azurerm/r/azurerm_windows_virtual_machine"

  admin_password               = null
  admin_username               = null
  allow_extension_operations   = null
  availability_set_id          = null
  computer_name                = null
  custom_data                  = null
  dedicated_host_id            = null
  enable_automatic_updates     = null
  eviction_policy              = null
  license_type                 = null
  location                     = null
  max_bid_price                = null
  name                         = null
  network_interface_ids        = []
  priority                     = null
  provision_vm_agent           = null
  proximity_placement_group_id = null
  resource_group_name          = null
  size                         = null
  source_image_id              = null
  tags                         = {}
  timezone                     = null
  zone                         = null

  additional_capabilities = [{
    ultra_ssd_enabled = null
  }]

  additional_unattend_content = [{
    content = null
    setting = null
  }]

  boot_diagnostics = [{
    storage_account_uri = null
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    type         = null
  }]

  os_disk = [{
    caching = null
    diff_disk_settings = [{
      option = null
    }]
    disk_encryption_set_id    = null
    disk_size_gb              = null
    name                      = null
    storage_account_type      = null
    write_accelerator_enabled = null
  }]

  plan = [{
    name      = null
    product   = null
    publisher = null
  }]

  secret = [{
    certificate = [{
      store = null
      url   = null
    }]
    key_vault_id = null
  }]

  source_image_reference = [{
    offer     = null
    publisher = null
    sku       = null
    version   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  winrm_listener = [{
    certificate_url = null
    protocol        = null
  }]
}
