## common variables

variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}


## App service plan -linux

variable "service_plan_name" {
  type = string
}

variable "os_type" {
  type = string
}
variable "sku_name" {
  type = string
}

## Appservice - Webapp - linux

variable "webapp_name" {
  type = string
}