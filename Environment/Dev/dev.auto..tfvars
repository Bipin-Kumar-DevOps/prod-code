mrg = {
    rg01 = {
        name = "Prod-rg02"
        location = "eastus"
        }
}
mvnet = {
  vnet01 = {
    vnetname            = "prod-vnet1"
    location            = "eastus"
    resource_group_name = "prod-rg01"
    address_space       = ["10.0.0.0/16"]


  }
#   mvnet02 = {
#     vnetname            = "prod-vnet2"
#     location            = "eastus"
#     resource_group_name = "prod-rg01"
#     address_space       = ["20.0.0.0/16"]
#   }
}
msnet = {
  subnet01 = {
    snetname             = "prod-subnet1"
    resource_group_name  = "prod-rg01"
    virtual_network_name = "prod-vnet01"
    address_prefixes     = ["10.0.1.0/24"]
  }
#   subnet02 = {
#     snetname             = "prod-subnet2"
#     resource_group_name  = azurerm_resource_group.example.name
#     virtual_network_name = azurerm_virtual_network.example.name
#     address_prefixes     = ["10.0.2.0/24"]
#   }
#   subnet03 = {
#     snetname             = "prod-subnet3"
#     resource_group_name  = "prod-rg01"
#     virtual_network_name = "prod-vnet01"
#     address_prefixes     = ["10.0.3.0/24"]
#   }
}
mnsg = {
  nsg01 = {
    name                = "prodSecGroup1"
    location            = "eastus"
    resource_group_name = "prod-rg01"
  }
}

msr = {
  sr01 = {
    srname                      = "test1"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = azurerm_resource_group.example.name
    network_security_group_name = azurerm_network_security_group.example.name
  }
  sr02 = {
    srname                      = "test2"
    priority                    = 101
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = azurerm_resource_group.example.name
    network_security_group_name = azurerm_network_security_group.example.name
  }
  sr03 = {
    srname                      = "test3"
    priority                    = 102
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = azurerm_resource_group.example.name
    network_security_group_name = azurerm_network_security_group.example.name
  }
}
mnic = {
  nic01 = {
    nicname                       = "example-nic"
    location                      = "eastus"
    resource_group_name           = "prod-rg01"
    ipname                        = "internal"
    private_ip_address_allocation = "Dynamic"
  }
}
mnsg-ac = {
  nsg-ass01 = {
    nsgname              = "prodSecGroup1"
    subnet               = "prod-subnet1"
    virtual_network_name = "prod-vnet01"
    resource_group_name  = "prod-rg01"
  }
}
mvm = {
  vm01 = {
    vmname                          = "example-machine"
    resource_group_name             = "prod-rg01"
    location                        = "eastus"
    size                            = "Standard_F2"
    admin_username                  = "adminuser"
    admin_password                  = "admin@12345"
    disable_password_authentication = "false"
    nicname                         = "example-nic"
  }
}
mstg = {
  stg01 = {
    name                     = "storageaccountname"
    resource_group_name      = "prod-rg01"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
mca = {
  ca01 = {
    caname                = "testcontainer"
    container_access_type = "private"
    stgname               = "storageaccountname"
    resource_group_name   = "prod-rg01"
  }
}


