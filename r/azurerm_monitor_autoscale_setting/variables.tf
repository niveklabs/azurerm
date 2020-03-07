variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
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

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "target_resource_id" {
  description = "(required)"
  type        = string
}

variable "notification" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      email = list(object(
        {
          custom_emails                         = list(string)
          send_to_subscription_administrator    = bool
          send_to_subscription_co_administrator = bool
        }
      ))
      webhook = list(object(
        {
          properties  = map(string)
          service_uri = string
        }
      ))
    }
  ))
  default = []
}

variable "profile" {
  description = "nested mode: NestingList, min items: 1, max items: 20"
  type = set(object(
    {
      capacity = list(object(
        {
          default = number
          maximum = number
          minimum = number
        }
      ))
      fixed_date = list(object(
        {
          end      = string
          start    = string
          timezone = string
        }
      ))
      name = string
      recurrence = list(object(
        {
          days     = list(string)
          hours    = list(number)
          minutes  = list(number)
          timezone = string
        }
      ))
      rule = list(object(
        {
          metric_trigger = list(object(
            {
              metric_name        = string
              metric_resource_id = string
              operator           = string
              statistic          = string
              threshold          = number
              time_aggregation   = string
              time_grain         = string
              time_window        = string
            }
          ))
          scale_action = list(object(
            {
              cooldown  = string
              direction = string
              type      = string
              value     = number
            }
          ))
        }
      ))
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

