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
