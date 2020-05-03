variable "active" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "recurrence_period_end" {
  description = "(required)"
  type        = string
}

variable "recurrence_period_start" {
  description = "(required)"
  type        = string
}

variable "recurrence_type" {
  description = "(required)"
  type        = string
}

variable "resource_group_id" {
  description = "(required)"
  type        = string
}

variable "delivery_info" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      container_name     = string
      root_folder_path   = string
      storage_account_id = string
    }
  ))
}

variable "query" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      time_frame = string
      type       = string
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

