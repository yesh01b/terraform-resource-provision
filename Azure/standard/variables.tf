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