data "azurerm_subnet" "Subnet" {
  name                 = "RUM_subnet"
  virtual_network_name = "RUM-vm"
  resource_group_name  = "RUM_rg"
}

data "azurerm_public_ip" "Publicip" {
  name                = "RUM_PublicIP"
  resource_group_name = "RUM_rg"
}

data "azurerm_key_vault" "keyvault" {
  name                = "KeyvaultTST1"
  resource_group_name = "keyvault_rg"
}


data "azurerm_key_vault_secret" "keyvalt-username" {
  name =  "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "kv-password" {
  name =  "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
