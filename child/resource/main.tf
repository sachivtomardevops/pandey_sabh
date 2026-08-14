resource "azurerm_resource_group" "rg" {
    for_each = var.kaka
  name     = each.value.name
  location = each.value.location
}