## When running locally, create *terraform.tfvars* file in the same folder as *main.tf* and *variables.tf* and put this code wtih values for service principal:
```
azure_client_id       = "<client-id>"
azure_client_secret   = "<client-secret>"
azure_tenant_id       = "<tenant-id>"
azure_subscription_id = "<subscription-id>"
```