variable "allow_claim" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "disallow_public_ip_address" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "lab_name" {
  description = "(required)"
  type        = string
}

variable "lab_subnet_name" {
  description = "(required)"
  type        = string
}

variable "lab_virtual_network_id" {
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

variable "notes" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "password" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "size" {
  description = "(required)"
  type        = string
}

variable "storage_type" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "username" {
  description = "(required)"
  type        = string
}

variable "gallery_image_reference" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }
  ))
}

variable "inbound_nat_rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      backend_port  = number
      frontend_port = number
      protocol      = string
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

