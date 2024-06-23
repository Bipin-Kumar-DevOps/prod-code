data "azurerm_subnet" "snet-block" {
  for_each             = var.nsg-ass
  name                 = each.value.subnet
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_network_security_group" "nsg-block" {
  for_each            = var.nsg-ass
  name                = each.value.nsgname
  resource_group_name = each.value.resource_group_name
}

# output "location" {
#   value = data.azurerm_network_security_group.example.location
# }
