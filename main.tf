terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.30"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rag-demo-rg"
    storage_account_name = "ragterraformstate"
    container_name       = "ragterraformstate-container"
    key                  = "dev-demo.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  
  resource_provider_registrations = "none"

  client_id       = var.azure_client_id
 // client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
}

data "azurerm_resource_group" "devrg" {
  name     = "terraform-devops-rg2"
}

/*
resource "azurerm_resource_group" "devrg1" {
  name     = "terraform-devops-rg1"
  location = "East US"
}
*/

/*
resource "azurerm_storage_account" "storageterr" {
  name                          = "teststorageaccount098510"
  resource_group_name           = data.azurerm_resource_group.devrg.name
  location                      = azurerm_resource_group.devrg.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = false

  tags = {
    environment = "dev"
  }
}
*/

/*
resource "azurerm_storage_account" "storage2" {
  name                          = "teststorageaccount098765"
  resource_group_name           = azurerm_resource_group.devrg1.name
  location                      = azurerm_resource_group.devrg1.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = true
}
*/
