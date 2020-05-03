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

variable "config_server_git_setting" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      http_basic_auth = list(object(
        {
          password = string
          username = string
        }
      ))
      label = string
      repository = list(object(
        {
          http_basic_auth = list(object(
            {
              password = string
              username = string
            }
          ))
          label        = string
          name         = string
          pattern      = list(string)
          search_paths = list(string)
          ssh_auth = list(object(
            {
              host_key                         = string
              host_key_algorithm               = string
              private_key                      = string
              strict_host_key_checking_enabled = bool
            }
          ))
          uri = string
        }
      ))
      search_paths = list(string)
      ssh_auth = list(object(
        {
          host_key                         = string
          host_key_algorithm               = string
          private_key                      = string
          strict_host_key_checking_enabled = bool
        }
      ))
      uri = string
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

