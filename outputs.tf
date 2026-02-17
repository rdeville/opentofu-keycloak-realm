output "this" {
  value       = keycloak_realm.this
  description = "ID of the deployed realm"
}

output "client_scopes" {
  value       = keycloak_openid_client_scope.this
  description = "ID of the deployed realm"
}
