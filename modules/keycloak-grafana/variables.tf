variable "realm_id" {
  description = "Realm identifier hosting the Grafana Keycloak client."
  type        = string
}

variable "resource_server_id" {
  description = "ID (UUID) of the Keycloak OIDC client / resource server Grafana uses."
  type        = string
}
