terraform {
  required_version = "1.15.6"

  # Direct state and execution tracking to HCP Terraform
  cloud {
    organization = "GC-Terraform"

    workspaces {
      name = "TerraformDemo_State"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

variable "azure_client_id" {
  type = string
}

variable "azure_client_secret" {
  type      = string
  sensitive = true
}

variable "azure_tenant_id" {
  type = string
}

variable "azure_subscription_id" {
  type = string
}

resource "azurerm_resource_group" "devrg" {
  name     = "terraform-devops-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storageterr" {
  name                          = "teststorageaccount098765"
  resource_group_name           = azurerm_resource_group.devrg.name
  location                      = azurerm_resource_group.devrg.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = true

  tags = {
    environment = "dev"
  }
}