variable "cognitive_account_connection_custom_keys" {
  description = <<EOT
Map of cognitive_account_connection_custom_keys, attributes below
Required:
    - category
    - cognitive_account_id
    - custom_keys
    - custom_keys_key_vault_id (optional, alternative to custom_keys)
    - custom_keys_key_vault_secret_name (optional, alternative to custom_keys)
    - name
    - target
Optional:
    - metadata
EOT

  type = map(object({
    category                          = string
    cognitive_account_id              = string
    custom_keys                       = map(string)
    custom_keys_key_vault_id          = optional(string)
    custom_keys_key_vault_secret_name = optional(string)
    name                              = string
    target                            = string
    metadata                          = optional(map(string))
  }))
}

