module "azurerm_healthcare_service" {
  source = "./azurerm/r/azurerm_healthcare_service"

  access_policy_object_ids = []
  cosmosdb_throughput      = null
  kind                     = null
  location                 = null
  name                     = null
  resource_group_name      = null
  tags                     = {}

  authentication_configuration = [{
    audience            = null
    authority           = null
    smart_proxy_enabled = null
  }]

  cors_configuration = [{
    allow_credentials  = null
    allowed_headers    = []
    allowed_methods    = []
    allowed_origins    = []
    max_age_in_seconds = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
