resource "azurerm_storage_account" "storageterr" {
  name                          = var.storagename
  resource_group_name           = data.azurerm_resource_group.devrg.name
  location                      = azurerm_resource_group.devrg.location
  account_tier                  = var.acounttier
  account_replication_type      = "LRS"
  public_network_access_enabled = false

  tags = {
    environment = "dev"
  }
}
