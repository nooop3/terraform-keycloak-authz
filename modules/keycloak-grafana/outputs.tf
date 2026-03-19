output "client_role_ids" {
  description = "Grafana client role IDs keyed by role name."
  value = {
    for name, role in keycloak_role.client_roles :
    name => role.id
  }
}

output "client_role_names" {
  description = "Grafana client role names keyed by role name."
  value = {
    for name, role in keycloak_role.client_roles :
    name => role.name
  }
}
