resource "azurerm_virtual_network" "vnet" {
    for_each = var.kantivnet
  name = each.value.name
  location = each.value.location
 address_space = each.value.address_space
  resource_group_name = each.value.rg_name
}