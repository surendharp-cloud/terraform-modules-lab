moved {
  from = azurerm_resource_group.rg
  to   = module.resource_group.azurerm_resource_group.rg
}
module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source = "../../modules/network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.address_space
  web_subnet_prefix   = var.web_subnet_prefix
  db_subnet_prefix    = var.db_subnet_prefix
}
