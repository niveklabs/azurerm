module "azurerm_stream_analytics_output_mssql" {
  source = "./azurerm/r/azurerm_stream_analytics_output_mssql"

  database                  = null
  name                      = null
  password                  = null
  resource_group_name       = null
  server                    = null
  stream_analytics_job_name = null
  table                     = null
  user                      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
