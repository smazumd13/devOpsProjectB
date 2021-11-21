# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.83.0"
    }
  }

  backend "azurerm" {
    storage_account_name = var.storageName
      container_name       = var.containerName
      key                  = "terraform.tfstate"
	    access_key  = "__storagekey__"
	}
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}