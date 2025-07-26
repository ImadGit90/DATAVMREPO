resource "azurerm_subnet" "RUM_subnet" {
    name = "RUM_subnet"
    resource_group_name = "RUM_rg"
    virtual_network_name = "Rum_Vnet"
    address_prefixes = ["10.0.1.0/24"]
  
}

# subnet {
#     name             = "subnet1"
#     address_prefixes = ["10.0.1.0/24"]
#   }