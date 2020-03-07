module "azurerm_dedicated_host" {
  source = "./azurerm/r/azurerm_dedicated_host"

  auto_replace_on_failure = null
  dedicated_host_group_id = null
  license_type            = null
  location                = null
  name                    = null
  platform_fault_domain   = null
  sku_name                = null
  tags                    = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
