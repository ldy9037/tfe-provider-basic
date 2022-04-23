variable "tfe_organization_name" {
  description = "Terraform Organization 이름"
  type        = string
}

variable "tfe_organization_owner" {
  description = "Terraform Organization 소유자"
  type        = string
}

variable "tfc_oauth_client" {
  description = "OAuth Token ID 정보 확인을 위한 VCS 연결정보"
  type = object({
    name             = string,
    api_url          = string,
    http_url         = string,
    service_provider = string
  })
  default = {
    name             = "github-demo",
    api_url          = "https://api.github.com",
    http_url         = "https://github.com",
    service_provider = "github"
  }
}

variable "tfc_oauth_token" {
  description = "VCS Provider 연결을 위한 계정 Access token (ghp_xxxx)"
  type        = string
}

variable "tfc_workspaces_network" {
  description = "demo infra의 Workspace 이름"
  type        = map(any)
}

variable "tfc_terraform_version" {
  description = "workspace에서 사용 할 Terraform Version"
  type        = string
}

variable "github_branch" {
  description = "Github Branch"
  type        = map(any)
}

variable "github_username" {
  description = "Github 계정"
  type        = string
}

variable "github_repository" {
  description = "Github Repository 명"
  type        = string
}