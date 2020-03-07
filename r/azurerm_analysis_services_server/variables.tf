variable "admin_users" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "backup_blob_container_uri" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_power_bi_service" {
  description = "(optional)"
  type        = bool
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

variable "querypool_connection_mode" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "ipv4_firewall_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name        = string
      range_end   = string
      range_start = string
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

