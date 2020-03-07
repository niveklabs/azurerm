variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "notification_sender_email" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "policy" {
  description = "(optional)"
  type = list(object(
    {
      xml_content = string
      xml_link    = string
    }
  ))
  default = null
}

variable "publisher_email" {
  description = "(required)"
  type        = string
}

variable "publisher_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "sku_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "additional_location" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      gateway_regional_url = string
      location             = string
      public_ip_addresses  = list(string)
    }
  ))
  default = []
}

variable "certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 10"
  type = set(object(
    {
      certificate_password = string
      encoded_certificate  = string
      store_name           = string
    }
  ))
  default = []
}

variable "hostname_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      management = list(object(
        {
          certificate                  = string
          certificate_password         = string
          host_name                    = string
          key_vault_id                 = string
          negotiate_client_certificate = bool
        }
      ))
      portal = list(object(
        {
          certificate                  = string
          certificate_password         = string
          host_name                    = string
          key_vault_id                 = string
          negotiate_client_certificate = bool
        }
      ))
      proxy = list(object(
        {
          certificate                  = string
          certificate_password         = string
          default_ssl_binding          = bool
          host_name                    = string
          key_vault_id                 = string
          negotiate_client_certificate = bool
        }
      ))
      scm = list(object(
        {
          certificate                  = string
          certificate_password         = string
          host_name                    = string
          key_vault_id                 = string
          negotiate_client_certificate = bool
        }
      ))
    }
  ))
  default = []
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      principal_id = string
      tenant_id    = string
      type         = string
    }
  ))
  default = []
}

variable "protocols" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable_http2 = bool
    }
  ))
  default = []
}

variable "security" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable_backend_ssl30      = bool
      enable_backend_tls10      = bool
      enable_backend_tls11      = bool
      enable_frontend_ssl30     = bool
      enable_frontend_tls10     = bool
      enable_frontend_tls11     = bool
      enable_triple_des_ciphers = bool
    }
  ))
  default = []
}

variable "sign_in" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
    }
  ))
  default = []
}

variable "sign_up" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
      terms_of_service = list(object(
        {
          consent_required = bool
          enabled          = bool
          text             = string
        }
      ))
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

