variable "environment" {
  type = string
}
variable "location" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "web_subnet_prefix" {
  type = list(string)
}
variable "db_subnet_prefix" {
  type = list(string)
}