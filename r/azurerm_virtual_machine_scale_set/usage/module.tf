module "azurerm_virtual_machine_scale_set" {
  source = "./azurerm/r/azurerm_virtual_machine_scale_set"

  automatic_os_upgrade         = null
  eviction_policy              = null
  health_probe_id              = null
  license_type                 = null
  location                     = null
  name                         = null
  overprovision                = null
  priority                     = null
  proximity_placement_group_id = null
  resource_group_name          = null
  single_placement_group       = null
  tags                         = {}
  upgrade_policy_mode          = null
  zones                        = []

  boot_diagnostics = [{
    enabled     = null
    storage_uri = null
  }]

  extension = [{
    auto_upgrade_minor_version = null
    name                       = null
    protected_settings         = null
    provision_after_extensions = []
    publisher                  = null
    settings                   = null
    type                       = null
    type_handler_version       = null
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    type         = null
  }]

  network_profile = [{
    accelerated_networking = null
    dns_settings = [{
      dns_servers = []
    }]
    ip_configuration = [{
      application_gateway_backend_address_pool_ids = []
      application_security_group_ids               = []
      load_balancer_backend_address_pool_ids       = []
      load_balancer_inbound_nat_rules_ids          = []
      name                                         = null
      primary                                      = null
      public_ip_address_configuration = [{
        domain_name_label = null
        idle_timeout      = null
        name              = null
      }]
      subnet_id = null
    }]
    ip_forwarding             = null
    name                      = null
    network_security_group_id = null
    primary                   = null
  }]

  os_profile = [{
    admin_password       = null
    admin_username       = null
    computer_name_prefix = null
    custom_data          = null
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

  rolling_upgrade_policy = [{
    max_batch_instance_percent              = null
    max_unhealthy_instance_percent          = null
    max_unhealthy_upgraded_instance_percent = null
    pause_time_between_batches              = null
  }]

  sku = [{
    capacity = null
    name     = null
    tier     = null
  }]

  storage_profile_data_disk = [{
    caching           = null
    create_option     = null
    disk_size_gb      = null
    lun               = null
    managed_disk_type = null
  }]

  storage_profile_image_reference = [{
    id        = null
    offer     = null
    publisher = null
    sku       = null
    version   = null
  }]

  storage_profile_os_disk = [{
    caching           = null
    create_option     = null
    image             = null
    managed_disk_type = null
    name              = null
    os_type           = null
    vhd_containers    = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
