variable "exclude_from_latest" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "gallery_name" {
  description = "(required)"
  type        = string
}

variable "image_name" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "managed_image_id" {
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

variable "target_region" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      name                   = string
      regional_replica_count = number
      storage_account_type   = string
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

