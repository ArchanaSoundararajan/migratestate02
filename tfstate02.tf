resource "azurerm_resource_group" "example" {
  name     = "example02-rg"
  location = "West Europe"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "migrate-sg"
    storage_account_name = "migratesg01"
    container_name       = "tfstate02"
    key                  = "state02.terraform.tfstate"
  }
}
provider "azurerm" {
  features {
  }
}
