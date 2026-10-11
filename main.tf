data "azurerm_key_vault_secret" "custom_keys" {
  for_each     = { for k, v in var.cognitive_account_connection_custom_keys : k => v if v.custom_keys_key_vault_id != null && v.custom_keys_key_vault_secret_name != null }
  name         = each.value.custom_keys_key_vault_secret_name
  key_vault_id = each.value.custom_keys_key_vault_id
}
resource "azurerm_cognitive_account_connection_custom_keys" "cognitive_account_connection_custom_keys" {
  for_each = var.cognitive_account_connection_custom_keys

  category             = each.value.category
  cognitive_account_id = each.value.cognitive_account_id
  custom_keys          = each.value.custom_keys != null ? each.value.custom_keys : try(data.azurerm_key_vault_secret.custom_keys[each.key].value, null)
  name                 = each.value.name
  target               = each.value.target
  metadata             = each.value.metadata
}

