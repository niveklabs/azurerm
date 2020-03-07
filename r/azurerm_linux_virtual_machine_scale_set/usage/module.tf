module "azurerm_linux_virtual_machine_scale_set" {
  source = "./azurerm/r/azurerm_linux_virtual_machine_scale_set"

  admin_password                                    = null
  admin_username                                    = null
  computer_name_prefix                              = null
  custom_data                                       = null
  disable_password_authentication                   = null
  do_not_run_extensions_on_overprovisioned_machines = null
  eviction_policy                                   = null
  health_probe_id                                   = null
  instances                                         = null
  location                                          = null
  max_bid_price                                     = null
  name                                              = null
  overprovision                                     = null
  priority                                          = null
  provision_vm_agent                                = null
  proximity_placement_group_id                      = null
  resource_group_name                               = null
  single_placement_group                            = null
  sku                                               = null
  source_image_id                                   = null
  tags                                              = {}
  upgrade_mode                                      = null
  zone_balance                                      = null
  zones                                             = []

  additional_capabilities = [{
    ultra_ssd_enabled = null
  }]

  admin_ssh_key = [{
    public_key = null
    username   = null
  }]

  automatic_os_upgrade_policy = [{
    disable_automatic_rollback  = null
    enable_automatic_os_upgrade = null
  }]

  boot_diagnostics = [{
    storage_account_uri = null
  }]

  data_disk = [{
    caching                   = null
    disk_encryption_set_id    = null
    disk_size_gb              = null
    lun                       = null
    storage_account_type      = null
    write_accelerator_enabled = null
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    type         = null
  }]

  network_interface = [{
    dns_servers                   = []
    enable_accelerated_networking = null
    enable_ip_forwarding          = null
    ip_configuration = [{
      application_gateway_backend_address_pool_ids = []
      application_security_group_ids               = []
      load_balancer_backend_address_pool_ids       = []
      load_balancer_inbound_nat_rules_ids          = []
      name                                         = null
      primary                                      = null
      public_ip_address = [{
        domain_name_label       = null
        idle_timeout_in_minutes = null
        ip_tag = [{
          tag  = null
          type = null
        }]
        name                = null
        public_ip_prefix_id = null
      }]
      subnet_id = null
      version   = null
    }]
    name                      = null
    network_security_group_id = null
    primary                   = null
  }]

  os_disk = [{
    caching = null
    diff_disk_settings = [{
      option = null
    }]
    disk_encryption_set_id    = null
    disk_size_gb              = null
    storage_account_type      = null
    write_accelerator_enabled = null
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

  secret = [{
    certificate = [{
      url = null
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
}
