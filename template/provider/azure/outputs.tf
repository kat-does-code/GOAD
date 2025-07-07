output "ubuntu-jumpbox-ip" {
  value = azurerm_linux_virtual_machine.jumpbox.public_ip_address
}

output "ubuntu-jumpbox-username" {
  value = azurerm_linux_virtual_machine.jumpbox.admin_username
}

output "ubuntu-jumpbox-publickey" {
  value = tls_private_key.ssh.public_key_openssh
}

output "vm-config" {
  value = var.vm_config
}

output "windows-vm-username" {
  value = var.username
}