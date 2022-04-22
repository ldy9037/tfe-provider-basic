terraform {
  required_providers {
    tfe = "~> 0.21.0"
  }

  required_version = ">= 1.1.7"
}

provider "tfe" {
}

locals {
  all_members = csvdecode(file("assets/all.csv"))
}

resource "tfe_organization" "demo_organization" {
  name  = var.tfe_organization_name
  email = var.tfe_organization_owner
}

resource "tfe_organization_membership" "demo_organization_membership" {
  for_each = { for all_members in local.all_members : all_members.email => all_members... }

  organization = tfe_organization.demo_organization.name
  email        = each.key
}

resource "tfe_oauth_client" "demo_oauth_client" {
  organization     = tfe_organization.demo_organization.id
  api_url          = var.tfc_oauth_client.api_url
  http_url         = var.tfc_oauth_client.http_url
  oauth_token      = var.tfc_oauth_token
  service_provider = var.tfc_oauth_client.service_provider
}