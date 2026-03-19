# keycloak-grafana

Creates the Grafana client roles `grafanaadmin`, `admin`, `editor`, and `viewer` on a Keycloak client.

## Usage

```hcl
module "keycloak_grafana_roles" {
  source  = "nooop3/authz/keycloak//modules/keycloak-grafana"
  version = "latest"

  realm_id  = data.keycloak_realm.target.id
  client_id = keycloak_openid_client.grafana.client_id
}
```

The module looks up the client and derives the UUIDs needed for client roles and the `keycloak_openid_user_client_role_protocol_mapper`.

## Inputs

- `realm_id` (string, required): Realm identifier hosting the Grafana client.
- `client_id` (string, required): Grafana Keycloak client ID.

## Outputs

- `client_role_ids`: Client role IDs keyed by role name.
- `client_role_names`: Client role names keyed by role name.
