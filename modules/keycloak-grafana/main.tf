resource "keycloak_role" "client_roles" {
  for_each = local.client_roles

  realm_id  = var.realm_id
  client_id = var.resource_server_id
  name      = each.key

  description = "Grafana client role managed by terraform-keycloak-authz."
}
