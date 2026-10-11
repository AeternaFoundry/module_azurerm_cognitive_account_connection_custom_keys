output "cognitive_account_connection_custom_keys_id" {
  description = "Map of id values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognitive_account_connection_custom_keys_category" {
  description = "Map of category values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.category if v.category != null && length(v.category) > 0 }
}
output "cognitive_account_connection_custom_keys_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.cognitive_account_id if v.cognitive_account_id != null && length(v.cognitive_account_id) > 0 }
}
output "cognitive_account_connection_custom_keys_custom_keys" {
  description = "Map of custom_keys values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.custom_keys if v.custom_keys != null && length(v.custom_keys) > 0 }
  sensitive   = true
}
output "cognitive_account_connection_custom_keys_metadata" {
  description = "Map of metadata values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "cognitive_account_connection_custom_keys_name" {
  description = "Map of name values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognitive_account_connection_custom_keys_target" {
  description = "Map of target values across all cognitive_account_connection_custom_keys, keyed the same as var.cognitive_account_connection_custom_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_custom_keys.cognitive_account_connection_custom_keys : k => v.target if v.target != null && length(v.target) > 0 }
}

