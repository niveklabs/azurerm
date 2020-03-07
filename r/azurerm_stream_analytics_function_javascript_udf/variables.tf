variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "script" {
  description = "(required)"
  type        = string
}

variable "stream_analytics_job_name" {
  description = "(required)"
  type        = string
}

variable "input" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      type = string
    }
  ))
}

variable "output" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      type = string
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

