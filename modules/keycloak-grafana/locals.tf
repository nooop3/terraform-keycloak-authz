locals {
  client_roles = toset([
    "grafanaadmin",
    "admin",
    "editor",
    "viewer",
  ])
}
