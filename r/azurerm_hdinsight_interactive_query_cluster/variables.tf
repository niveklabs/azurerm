variable "cluster_version" {
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
  description = "(required)"
  type        = string
}

variable "component_version" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      interactive_hive = string
    }
  ))
}

variable "gateway" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      enabled  = bool
      password = string
      username = string
    }
  ))
}

variable "roles" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      head_node = list(object(
        {
          password           = string
          ssh_keys           = set(string)
          subnet_id          = string
          username           = string
          virtual_network_id = string
          vm_size            = string
        }
      ))
      worker_node = list(object(
        {
          min_instance_count    = number
          password              = string
          ssh_keys              = set(string)
          subnet_id             = string
          target_instance_count = number
          username              = string
          virtual_network_id    = string
          vm_size               = string
        }
      ))
      zookeeper_node = list(object(
        {
          password           = string
          ssh_keys           = set(string)
          subnet_id          = string
          username           = string
          virtual_network_id = string
          vm_size            = string
        }
      ))
    }
  ))
}

variable "storage_account" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      is_default           = bool
      storage_account_key  = string
      storage_container_id = string
    }
  ))
  default = []
}

variable "storage_account_gen2" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      filesystem_id                = string
      is_default                   = bool
      managed_identity_resource_id = string
      storage_resource_id          = string
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

