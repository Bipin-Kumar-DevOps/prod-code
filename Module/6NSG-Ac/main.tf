resource "azurerm_subnet_network_security_group_association" "nsg-ass" {
  for_each = var.nsg-ass
  subnet_id                 = data.azurerm_subnet.snet-block[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg-block[each.key].id
}