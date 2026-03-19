# keycloak-grafana

Creates the Grafana client roles `grafanaadmin`, `admin`, `editor`, and `viewer` on a Keycloak client.

## Usage

```hcl
module "keycloak_grafana_roles" {
  source  = "nooop3/authz/keycloak//modules/keycloak-grafana"
  version = "latest"

  realm_id           = data.keycloak_realm.target.id
  resource_server_id = keycloak_openid_client.grafana.resource_server_id
}
```

Assign these client roles to users or groups on the Grafana client.

## Inputs

- `realm_id` (string, required): Realm identifier hosting the Grafana client.
- `resource_server_id` (string, required): Grafana client/resource-server UUID.

## Outputs

- `client_role_ids`: Client role IDs keyed by role name.
- `client_role_names`: Client role names keyed by role name.
