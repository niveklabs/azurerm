variable "authorization_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "connection_protocol" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_bgp" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "express_route_circuit_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "express_route_gateway_bypass" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "local_network_gateway_id" {
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

variable "peer_virtual_network_gateway_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "routing_weight" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "shared_key" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "use_policy_based_traffic_selectors" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "virtual_network_gateway_id" {
  description = "(required)"
  type        = string
}

variable "ipsec_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dh_group         = string
      ike_encryption   = string
      ike_integrity    = string
      ipsec_encryption = string
      ipsec_integrity  = string
      pfs_group        = string
      sa_datasize      = number
      sa_lifetime      = number
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

