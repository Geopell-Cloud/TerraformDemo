provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "devopsrg" {
  name     = "terraform-devops-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storageterr" {
  name                     = "teststorageaccount098765"
  resource_group_name      = azurerm_resource_group.devopsrg.name
  location                 = azurerm_resource_group.devopsrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = true

  tags = {
    environment = "dev"
  }
}