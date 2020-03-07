module "azurerm_stream_analytics_job" {
  source = "./azurerm/d/azurerm_stream_analytics_job"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
