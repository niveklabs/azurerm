module "azurerm_cdn_endpoint" {
  source = "./azurerm/r/azurerm_cdn_endpoint"

  content_types_to_compress     = []
  is_compression_enabled        = null
  is_http_allowed               = null
  is_https_allowed              = null
  location                      = null
  name                          = null
  optimization_type             = null
  origin_host_header            = null
  origin_path                   = null
  probe_path                    = null
  profile_name                  = null
  querystring_caching_behaviour = null
  resource_group_name           = null
  tags                          = {}

  geo_filter = [{
    action        = null
    country_codes = []
    relative_path = null
  }]

  origin = [{
    host_name  = null
    http_port  = null
    https_port = null
    name       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
