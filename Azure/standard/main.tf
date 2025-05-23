## Terraform version

terraform {
  required_version = "1.9.6"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend-dev-uks-01"
    storage_account_name = "saasbackenddevuks01"
    container_name       = "terraformstate"
    key                 = "terraform.tfstate"
  }
}