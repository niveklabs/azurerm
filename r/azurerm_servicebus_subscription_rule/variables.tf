variable "action" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "filter_type" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "sql_filter" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subscription_name" {
  description = "(required)"
  type        = string
}

variable "topic_name" {
  description = "(required)"
  type        = string
}

variable "correlation_filter" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      content_type        = string
      correlation_id      = string
      label               = string
      message_id          = string
      reply_to            = string
      reply_to_session_id = string
      session_id          = string
      to                  = string
    }
  ))
  default = []
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

