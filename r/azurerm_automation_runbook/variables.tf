variable "automation_account_name" {
  description = "(required)"
  type        = string
}

variable "content" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "log_progress" {
  description = "(required)"
  type        = bool
}

variable "log_verbose" {
  description = "(required)"
  type        = bool
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "runbook_type" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "publish_content_link" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      hash = list(object(
        {
          algorithm = string
          value     = string
        }
      ))
      uri     = string
      version = string
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

