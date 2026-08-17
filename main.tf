terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "RG" {
  name     = "rg_1"
  location = "eastus"
}
resource "azurerm_storage_account" "Storage" {
  depends_on               = [azurerm_resource_group.RG]
  name                     = "storage13424"
  resource_group_name      = "rg_1"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
