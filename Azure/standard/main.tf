## Terraform version

terraform {
  required_version = "1.9.6"
}


## Backend

terraform {
  backend "local" {
    path = "../statefile/terraform.tfstate"
  }
}