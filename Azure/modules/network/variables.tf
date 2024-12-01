## Virtual Network
variable "virtual_network_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
    type = string
}
variable "address_space" {
  type = list(string)
}

## Subnet
variable "subnet_name" {
  type = string
}
variable "address_prefixes" {
  type = list(string)
}