variable "date_format" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "path_pattern" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "storage_account_key" {
  description = "(required)"
  type        = string
}

variable "storage_account_name" {
  description = "(required)"
  type        = string
}

variable "storage_container_name" {
  description = "(required)"
  type        = string
}

variable "stream_analytics_job_name" {
  description = "(required)"
  type        = string
}

variable "time_format" {
  description = "(required)"
  type        = string
}

variable "serialization" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      encoding        = string
      field_delimiter = string
      type            = string
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

