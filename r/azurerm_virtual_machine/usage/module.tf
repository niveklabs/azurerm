module "azurerm_virtual_machine" {
  source = "./azurerm/r/azurerm_virtual_machine"

  availability_set_id              = null
  delete_data_disks_on_termination = null
  delete_os_disk_on_termination    = null
  license_type                     = null
  location                         = null
  name                             = null
  network_interface_ids            = []
  primary_network_interface_id     = null
  proximity_placement_group_id     = null
  resource_group_name              = null
  tags                             = {}
  vm_size                          = null
  zones                            = []

  additional_capabilities = [{
    ultra_ssd_enabled = null
  }]

  boot_diagnostics = [{
    enabled     = null
    storage_uri = null
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    type         = null
  }]

  os_profile = [{
    admin_password = null
    admin_username = null
    computer_name  = null
    custom_data    = null
  }]

  os_profile_linux_config = [{
    disable_password_authentication = null
    ssh_keys = [{
      key_data = null
      path     = null
    }]
  }]

  os_profile_secrets = [{
    source_vault_id = null
    vault_certificates = [{
      certificate_store = null
      certificate_url   = null
    }]
  }]

  os_profile_windows_config = [{
    additional_unattend_config = [{
      component    = null
      content      = null
      pass         = null
      setting_name = null
    }]
    enable_automatic_upgrades = null
    provision_vm_agent        = null
    timezone                  = null
    winrm = [{
      certificate_url = null
      protocol        = null
    }]
  }]

  plan = [{
    name      = null
    product   = null
    publisher = null
  }]

  storage_data_disk = [{
    caching                   = null
    create_option             = null
    disk_size_gb              = null
    lun                       = null
    managed_disk_id           = null
    managed_disk_type         = null
    name                      = null
    vhd_uri                   = null
    write_accelerator_enabled = null
  }]

  storage_image_reference = [{
    id        = null
    offer     = null
    publisher = null
    sku       = null
    version   = null
  }]

  storage_os_disk = [{
    caching                   = null
    create_option             = null
    disk_size_gb              = null
    image_uri                 = null
    managed_disk_id           = null
    managed_disk_type         = null
    name                      = null
    os_type                   = null
    vhd_uri                   = null
    write_accelerator_enabled = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
