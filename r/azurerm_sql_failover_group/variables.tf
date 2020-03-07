variable "databases" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "server_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "partner_servers" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      id       = string
      location = string
      role     = string
    }
  ))
}

variable "read_write_endpoint_failover_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      grace_minutes = number
      mode          = string
    }
  ))
}

variable "readonly_endpoint_failover_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      mode = string
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

