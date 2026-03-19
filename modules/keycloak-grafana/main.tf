data "keycloak_openid_client" "grafana" {
  realm_id  = var.realm_id
  client_id = var.client_id
}

resource "keycloak_role" "client_roles" {
  for_each = local.client_roles

  realm_id  = var.realm_id
  client_id = data.keycloak_openid_client.grafana.resource_server_id
  name      = each.key

  description = "Grafana client role managed by terraform-keycloak-authz."
}

resource "keycloak_openid_user_client_role_protocol_mapper" "client_role" {
  realm_id  = var.realm_id
  client_id = data.keycloak_openid_client.grafana.resource_server_id

  name       = "client roles"
  claim_name = "resource_access.$${client_id}.roles"

  claim_value_type = "String"
  multivalued      = true

  client_id_for_role_mappings = var.client_id

  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}
