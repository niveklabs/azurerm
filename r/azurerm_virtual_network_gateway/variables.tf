variable "active_active" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "default_local_network_gateway_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_bgp" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "generation" {
  description = "(optional)"
  type        = string
  default     = null
}

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

variable "sku" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "type" {
  description = "(required)"
  type        = string
}

variable "vpn_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "bgp_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      asn             = number
      peer_weight     = number
      peering_address = string
    }
  ))
  default = []
}

variable "ip_configuration" {
  description = "nested mode: NestingList, min items: 1, max items: 2"
  type = set(object(
    {
      name                          = string
      private_ip_address_allocation = string
      public_ip_address_id          = string
      subnet_id                     = string
    }
  ))
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

variable "vpn_client_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      address_space         = list(string)
      radius_server_address = string
      radius_server_secret  = string
      revoked_certificate = set(object(
        {
          name       = string
          thumbprint = string
        }
      ))
      root_certificate = set(object(
        {
          name             = string
          public_cert_data = string
        }
      ))
      vpn_client_protocols = set(string)
    }
  ))
  default = []
}

