resource "tfe_workspace" "workspace_network" {
  for_each          = var.tfc_workspaces_network
  name              = each.value
  organization      = tfe_organization.demo_organization.id
  terraform_version = var.tfc_terraform_version

  vcs_repo {
    identifier     = "${var.github_username}/${var.github_repository}"
    branch         = var.github_branch[each.key]
    oauth_token_id = tfe_oauth_client.demo_oauth_client.oauth_token_id
  }
} 