variable "account_name" {
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

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      read = string
    }
  ))
  default = []
}

