variable "account_name" {
  description = "(required)"
  type        = string
}

variable "database_name" {
  description = "(required)"
  type        = string
}

variable "default_ttl" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "partition_key_path" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "throughput" {
  description = "(optional)"
  type        = number
  default     = null
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

variable "unique_key" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      paths = set(string)
    }
  ))
  default = []
}

