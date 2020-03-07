variable "auto_approval_subscription_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "enable_proxy_protocol" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "load_balancer_frontend_ip_configuration_ids" {
  description = "(required)"
  type        = set(string)
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

variable "visibility_subscription_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "nat_ip_configuration" {
  description = "nested mode: NestingList, min items: 1, max items: 8"
  type = set(object(
    {
      name                       = string
      primary                    = bool
      private_ip_address         = string
      private_ip_address_version = string
      subnet_id                  = string
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

