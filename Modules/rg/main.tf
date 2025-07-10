
resource "azurerm_resource_group" "rg-block" {
  for_each = var.Rgs
  name     = each.key
  location = each.value
}



