variable "account_name" {
  description = "(required)"
  type        = string
}

variable "database_name" {
  description = "(required)"
  type        = string
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

variable "conflict_resolution_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      conflict_resolution_path      = string
      conflict_resolution_procedure = string
      mode                          = string
    }
  ))
}

variable "index_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      automatic      = bool
      excluded_paths = set(string)
      included_paths = set(string)
      indexing_mode  = string
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

variable "unique_key" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      paths = set(string)
    }
  ))
  default = []
}

