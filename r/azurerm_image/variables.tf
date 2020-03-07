variable "hyper_v_generation" {
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

variable "source_virtual_machine_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "zone_resilient" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "data_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      blob_uri        = string
      caching         = string
      lun             = number
      managed_disk_id = string
      size_gb         = number
    }
  ))
  default = []
}

variable "os_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      blob_uri        = string
      caching         = string
      managed_disk_id = string
      os_state        = string
      os_type         = string
      size_gb         = number
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

