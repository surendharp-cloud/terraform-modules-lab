resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  web_subnet_prefix   = var.web_subnet_prefix
  db_subnet_prefix    = var.db_subnet_prefix
}