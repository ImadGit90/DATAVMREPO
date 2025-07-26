resource "azurerm_network_interface" "nic" {
  name                = "RUM-nic"
  location            = "west europe"
  resource_group_name = "RUM_rg"

    ip_configuration {
      name      = "internal"
      subnet_id = data.azurerm_subnet.Subnet
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = data.azurerm_public_ip.Publicip.id
    }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "RUM-vm"
  resource_group_name = "RUM_rg"
  location            = "East US"
  size                = "Standard_F2"
  admin_username      = data.azurerm_key_vault.keyvault.id
  network_interface_ids = [ azurerm_network_interface.nic.id]

  admin_password = data.azurerm_key_vault.keyvault.id
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}