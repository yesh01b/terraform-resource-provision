# terraform-resource-provision

Creation of the Resources as mentioned below
    Resource Group
    Virtual Network
    Subnet
    Network Interface
    Windows Virtual Machine

## Used Local Backend for storing the Terrafrom State file - Standard

Terraform version = "1.9.6"
provider = "azurerm"   ## Microsoft Azure
Provider version = ">= 3.35.0"


terrform plan is stored in ouput file "test" ## This file contains all configuration details in json format.

## State File

State file is stored in folder "Statefile"