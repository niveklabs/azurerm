module "azurerm_key_vault_certificate" {
  source = "./azurerm/r/azurerm_key_vault_certificate"

  key_vault_id = null
  name         = null
  tags         = {}

  certificate = [{
    contents = null
    password = null
  }]

  certificate_policy = [{
    issuer_parameters = [{
      name = null
    }]
    key_properties = [{
      exportable = null
      key_size   = null
      key_type   = null
      reuse_key  = null
    }]
    lifetime_action = [{
      action = [{
        action_type = null
      }]
      trigger = [{
        days_before_expiry  = null
        lifetime_percentage = null
      }]
    }]
    secret_properties = [{
      content_type = null
    }]
    x509_certificate_properties = [{
      extended_key_usage = []
      key_usage          = []
      subject            = null
      subject_alternative_names = [{
        dns_names = []
        emails    = []
        upns      = []
      }]
      validity_in_months = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
  }]
}
