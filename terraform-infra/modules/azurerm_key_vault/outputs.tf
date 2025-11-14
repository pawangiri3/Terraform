# outputs.tf for module: azurerm_key_vault

output "key_vault_ids" {
  value = {
    for k, v in azurerm_key_vault.kv :
    k => v.id
  }
}


output "key_vault_names" {
  value = {
    for k, v in azurerm_key_vault.kv :
    k => v.name
  }
}
output "key_vault_uris" {
  value = {
    for k, v in azurerm_key_vault.kv :
    k => v.vault_uri
  }
}

output "key_vault_resource_groups" {
  value = {
    for k, v in azurerm_key_vault.kv :
    k => v.resource_group_name
  }
}
output "key_vault_access_policies" {
  value = {
    for k, v in azurerm_key_vault.kv :
    k => v.access_policy
  }
}
output "key_vault_full" {
  value = azurerm_key_vault.kv
}
