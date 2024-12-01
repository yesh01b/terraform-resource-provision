## Network Interface
variable "nic_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "ip_configuration_name" {
  type    = string
  default = "internal"
}
variable "subnet_id" {
  type = string
}
variable "private_ip_address_allocation" {
  type    = string
  default = "Dynamic"
}

## Virtual machine - windows
variable "vm_name" {
  type = string
}
variable "admin_username" {
  type    = string
  default = "vmadminuser"
}
variable "admin_password" {
  type    = string
  default = "123456789Q@"
}
variable "size" {
  type    = string
  default = "Standard_DS1_V2"
}
variable "storage_account_type" {
  type    = string
  default = "Standard_LRS"
}
variable "caching" {
  type    = string
  default = "ReadWrite"
}
variable "publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}
variable "offer" {
  type    = string
  default = "WindowsServer"
}
variable "sku" {
  type    = string
  default = "2019-DataCenter"
}
variable "vm_version" {
  type    = string
  default = "latest"
}