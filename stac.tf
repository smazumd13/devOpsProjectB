resource "azurerm_storage_account" "st1" {
  name                     = var.storageName
  resource_group_name      = var.rgroupName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
  account_kind = "BlobStorage"
}

resource "azurerm_storage_container" "container1" {
  name                  = var.containerName
  storage_account_name  = azurerm_storage_account.st1.name
  container_access_type = "blob"
}