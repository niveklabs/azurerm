variable "express_route_circuit_name" {
  description = "(required)"
  type        = string
}

variable "peer_asn" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "peering_type" {
  description = "(required)"
  type        = string
}

variable "primary_peer_address_prefix" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "secondary_peer_address_prefix" {
  description = "(required)"
  type        = string
}

variable "shared_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "vlan_id" {
  description = "(required)"
  type        = number
}

variable "microsoft_peering_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      advertised_public_prefixes = list(string)
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

