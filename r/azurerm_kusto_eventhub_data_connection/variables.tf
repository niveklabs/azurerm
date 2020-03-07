variable "cluster_name" {
  description = "(required)"
  type        = string
}

variable "consumer_group" {
  description = "(required)"
  type        = string
}

variable "data_format" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "database_name" {
  description = "(required)"
  type        = string
}

variable "eventhub_id" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "mapping_rule_name" {
  description = "(optional)"
  type        = string
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

variable "table_name" {
  description = "(optional)"
  type        = string
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

