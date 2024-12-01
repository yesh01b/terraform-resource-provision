## Default variables

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-dev"
}

variable "location" {
  type        = string
  description = "The region where the resources are proviosioning"
  default     = "uksouth"
}
variable "env" {
  type    = string
  default = "dev"
}


# ## Virtual Network

# variable "virtual_network_name" {
#   type    = string
#   default = "vnet-dev"
# }
# variable "address_space" {
#   type    = list(string)
#   default = ["10.0.0.0/24"]
# }

# ## Subnet

# variable "subnet_name" {
#   type    = string
#   default = "snet-dev"
# }

# variable "address_prefixes" {
#   type    = list(string)
#   default = ["10.0.0.0/26"]
# }

# ## Network Interface - Virtual machine

# variable "nic_name" {
#   type    = string
#   default = "nic-dev"
# }

# variable "private_ip_address_allocation" {
#   type    = string
#   default = "Dynamic"
# }

# ## Virtual Machine

# variable "vm_name" {
#   type    = string
#   default = "vmdev01"
# }
# variable "admin_username" {
#   type    = string
#   default = "vmadminuser"
# }

# variable "admin_password" {
#   type    = string
#   default = "123456789A@"
# }

# variable "size" {
#   type    = string
#   default = "Standard_DS1_v2"
# }

# variable "storage_account_type" {
#   type    = string
#   default = "Standard_LRS"
# }

# variable "caching" {
#   type    = string
#   default = "ReadWrite"
# }

# variable "publisher" {
#   type    = string
#   default = "MicrosoftWindowsServer"
# }

# variable "offer" {
#   type    = string
#   default = "WindowsServer"
# }

# variable "sku" {
#   type    = string
#   default = "2019-DataCenter"
# }