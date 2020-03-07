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

variable "sku" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "frontend_ip_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      id                            = string
      inbound_nat_rules             = set(string)
      load_balancer_rules           = set(string)
      name                          = string
      outbound_rules                = set(string)
      private_ip_address            = string
      private_ip_address_allocation = string
      public_ip_address_id          = string
      public_ip_prefix_id           = string
      subnet_id                     = string
      zones                         = list(string)
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

