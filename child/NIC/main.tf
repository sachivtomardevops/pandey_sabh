# 1. Subnet ki ID fetch karne ke liye Data Block
data "azurerm_subnet" "subnet_data" {
  for_each             = var.kantinic
  name                 = "jackey_subnet"                 # Aapke subnet ka naam
  virtual_network_name = "jackey_vnet"                   # Aapke VNet ka naam
  resource_group_name  = each.value.rg_name
}

# 2. Public IP ki ID fetch karne ke liye Data Block
data "azurerm_public_ip" "pip_data" {
  for_each            = var.kantinic
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
}

# 3. Aapka NIC Resource
resource "azurerm_network_interface" "n1" {
  for_each            = var.kantinic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet_data[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip_data[each.key].id
  }
}