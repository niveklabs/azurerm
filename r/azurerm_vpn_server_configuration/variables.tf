variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "vpn_authentication_types" {
  description = "(required)"
  type        = list(string)
}

variable "vpn_protocols" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "azure_active_directory_authentication" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      audience = string
      issuer   = string
      tenant   = string
    }
  ))
  default = []
}

variable "client_revoked_certificate" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name       = string
      thumbprint = string
    }
  ))
  default = []
}

variable "client_root_certificate" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name             = string
      public_cert_data = string
    }
  ))
  default = []
}

variable "ipsec_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dh_group               = string
      ike_encryption         = string
      ike_integrity          = string
      ipsec_encryption       = string
      ipsec_integrity        = string
      pfs_group              = string
      sa_data_size_kilobytes = number
      sa_lifetime_seconds    = number
    }
  ))
  default = []
}

variable "radius_server" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      address = string
      client_root_certificate = set(object(
        {
          name       = string
          thumbprint = string
        }
      ))
      secret = string
      server_root_certificate = set(object(
        {
          name             = string
          public_cert_data = string
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

