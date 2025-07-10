
resource "azurerm_storage_account" "sa-block" {
 
  for_each                 = var.Storages
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  account_tier             = "Standard"
  account_replication_type = each.value.account_replication_type
  location                 = each.value.location
}