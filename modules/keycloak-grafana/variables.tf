variable "realm_id" {
  description = "Realm identifier hosting the Grafana Keycloak client."
  type        = string
}

variable "client_id" {
  description = "Client ID of the Keycloak client Grafana uses."
  type        = string
}
