variable "account_name" {
  description = "(required)"
  type        = string
}

variable "database_name" {
  description = "(required)"
  type        = string
}

variable "default_ttl_seconds" {
  description = "(optional)"
  type        = number
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

variable "shard_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "throughput" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "index" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      keys   = set(string)
      unique = bool
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

