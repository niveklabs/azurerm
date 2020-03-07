variable "automation_account_name" {
  description = "(required)"
  type        = string
}

variable "job_schedule_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "parameters" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "run_on" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "runbook_name" {
  description = "(required)"
  type        = string
}

variable "schedule_name" {
  description = "(required)"
  type        = string
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

