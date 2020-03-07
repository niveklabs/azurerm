variable "name" {
  description = "(required)"
  type        = string
}

variable "queue_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "servicebus_namespace" {
  description = "(required)"
  type        = string
}

variable "shared_access_policy_key" {
  description = "(required)"
  type        = string
}

variable "shared_access_policy_name" {
  description = "(required)"
  type        = string
}

variable "stream_analytics_job_name" {
  description = "(required)"
  type        = string
}

variable "serialization" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      encoding        = string
      field_delimiter = string
      format          = string
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

