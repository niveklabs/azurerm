# azurerm Provider

[embedmd]:# (azurerm.tf)
```tf
provider "azurerm" {
  version = "2.4.0"

  auxiliary_tenant_ids           = []
  client_certificate_password    = null
  client_certificate_path        = null
  client_id                      = null
  client_secret                  = null
  disable_correlation_request_id = null
  disable_terraform_partner_id   = null
  environment                    = null
  msi_endpoint                   = null
  partner_id                     = null
  skip_credentials_validation    = null
  skip_provider_registration     = null
  storage_use_azuread            = null
  subscription_id                = null
  tenant_id                      = null
  use_msi                        = null

  features {


    key_vault {
      purge_soft_delete_on_destroy    = null
      recover_soft_deleted_key_vaults = null
    }

    virtual_machine {
      delete_os_disk_on_deletion = null
    }

    virtual_machine_scale_set {
      roll_instances_when_required = null
    }
  }
}
```
