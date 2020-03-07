module "azurerm_signalr_service" {
  source = "./azurerm/r/azurerm_signalr_service"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  cors = [{
    allowed_origins = []
  }]

  features = [{
    flag  = null
    value = null
  }]

  sku = [{
    capacity = null
    name     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
