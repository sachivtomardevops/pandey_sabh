resource "azurerm_virtual_machine" "name" {
  for each = var.vm
  name = each.value.name
  location = each.value.location
    resource_group_name = each.value.rg_name
    network_interface_ids = [azurerm_network_interface.n1[each.key].id]
    sub
}