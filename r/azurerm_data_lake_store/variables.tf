variable "encryption_state" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "encryption_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "firewall_allow_azure_ips" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "firewall_state" {
  description = "(optional)"
  type        = string
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

variable "tier" {
  description = "(optional)"
  type        = string
  default     = null
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

