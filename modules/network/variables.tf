variable "resource_group_name" {}
variable "location" {}
variable "vnet_name" {}
variable "address_space" {
  type=list(string)
}
variable "web_subnet_prefix" {
  type=list(string)
}
variable "db_subnet_prefix" {
  type = list(string)
}