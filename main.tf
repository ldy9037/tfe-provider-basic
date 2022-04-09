terraform {
  required_providers {
    tfe = "~> 0.21.0"
  }
}

provider "tfe" {
}

resource "tfe_organization" "demo_organization" {
  name  = var.tfe_organization_name
  email = var.tfe_organization_owner
}