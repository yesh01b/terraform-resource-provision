variable "virtual_machines" {
  type = map(object({
    nic_name                      = string
    resource_group_name           = string
    location                      = string
    ip_configuration_name         = string
    private_ip_address_allocation = string
    subnet_id                     = string
    vm_name                       = string
    size                          = string
    admin_username                = string
    admin_password                = string
    storage_account_type          = string
    caching                       = string
    publisher                     = string
    offer                         = string
    sku                           = string
    vm_version                    = string
  }))

}