resource "azurerm_virtual_network" "vnet-block" {
  for_each            = var.vnet
  name                = each.value.vnetname
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]
 
  tags = {
    environment = "Production"
  }
}

