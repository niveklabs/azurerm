variable "account_name" {
  description = "(required)"
  type        = string
}

variable "display_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "max_tasks_per_node" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "metadata" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "node_agent_sku_id" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "stop_pending_resize_operation" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "vm_size" {
  description = "(required)"
  type        = string
}

variable "auto_scale" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      evaluation_interval = string
      formula             = string
    }
  ))
  default = []
}

variable "certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      id             = string
      store_location = string
      store_name     = string
      visibility     = set(string)
    }
  ))
  default = []
}

variable "container_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      container_registries = list(object(
        {
          password        = string
          registry_server = string
          user_name       = string
        }
      ))
      type = string
    }
  ))
  default = []
}

variable "fixed_scale" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      resize_timeout            = string
      target_dedicated_nodes    = number
      target_low_priority_nodes = number
    }
  ))
  default = []
}

variable "network_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      endpoint_configuration = list(object(
        {
          backend_port        = number
          frontend_port_range = string
          name                = string
          network_security_group_rules = list(object(
            {
              access                = string
              priority              = number
              source_address_prefix = string
            }
          ))
          protocol = string
        }
      ))
      subnet_id = string
    }
  ))
  default = []
}

variable "start_task" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      command_line         = string
      environment          = map(string)
      max_task_retry_count = number
      resource_file = list(object(
        {
          auto_storage_container_name = string
          blob_prefix                 = string
          file_mode                   = string
          file_path                   = string
          http_url                    = string
          storage_container_url       = string
        }
      ))
      user_identity = list(object(
        {
          auto_user = list(object(
            {
              elevation_level = string
              scope           = string
            }
          ))
          user_name = string
        }
      ))
      wait_for_success = bool
    }
  ))
  default = []
}

variable "storage_image_reference" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      id        = string
      offer     = string
      publisher = string
      sku       = string
      version   = string
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

