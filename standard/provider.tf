## Provider - Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.35.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "c4c44e31-c0c8-401b-824e-3fba6c4e6b68"
}