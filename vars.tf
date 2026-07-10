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


/*
# When running locally, create terraform.tfvars file and put this code:
------------------------------------------
azure_client_id       = "<client-id>"
azure_client_secret   = "<client-secret>"
azure_tenant_id       = "<tenant-id>"
azure_subscription_id = "<subscription-id>"
------------------------------------------
*/