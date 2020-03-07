variable "maximum_bytes_per_packet" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "maximum_bytes_per_session" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "maximum_capture_duration" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_watcher_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "target_resource_id" {
  description = "(required)"
  type        = string
}

variable "filter" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      local_ip_address  = string
      local_port        = string
      protocol          = string
      remote_ip_address = string
      remote_port       = string
    }
  ))
  default = []
}

variable "storage_location" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      file_path          = string
      storage_account_id = string
      storage_path       = string
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

