variable "lab_name" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "status" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "task_type" {
  description = "(required)"
  type        = string
}

variable "time_zone_id" {
  description = "(required)"
  type        = string
}

variable "daily_recurrence" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      time = string
    }
  ))
  default = []
}

variable "hourly_recurrence" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      minute = number
    }
  ))
  default = []
}

variable "notification_settings" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      status          = string
      time_in_minutes = number
      webhook_url     = string
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

variable "weekly_recurrence" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      time      = string
      week_days = list(string)
    }
  ))
  default = []
}

