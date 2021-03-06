# ldy9037/tfe-provider-basic

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

tfe provider를 활용해서  terraform cloud 기본 구성

##### 좋은 commit message 작성을 위한 참고자료

- [commit message 작성 규칙](https://meetup.toast.com/posts/106)
- [commit naming](https://blog.ull.im/engineering/2019/03/10/logs-on-git.html)


## Table of Contents

- [소개](#소개)
- [시작하기](#시작하기)
- [주의사항](#주의사항)
- [참고](#참고)
- [제작자](#제작자)

## 소개

 나중에 참고 할 수 있도록 tfe provider를 사용해 기본 구성 해보겠음.
 
 ##### 기술 스택
 - terraform v1.1.6
 - [tfe provider](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs)
 
## 시작하기

Terraform 초기화
```sh
terraform init
```

Git pre-commit 설정
```sh
pip install pre-commit
pre-commit install
```

pre-commit 수동 실행
```sh
pre-commit run -a
```

환경변수로 TFE_TOKEN([Terraform API Token](https://www.terraform.io/cloud-docs/users-teams-organizations/users#api-tokens)) 지정
```sh
export TFE_TOKEN=<token>
```

## 주의사항
-

## 참고
-

## 제작자
[ldy9037@naver.com]()

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_oauth_client.demo_oauth_client](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |
| [tfe_organization.demo_organization](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_organization_membership.demo_organization_membership](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_membership) | resource |
| [tfe_workspace.workspace_network](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_branch"></a> [github\_branch](#input\_github\_branch) | Github Branch | `map(any)` | n/a | yes |
| <a name="input_github_repository"></a> [github\_repository](#input\_github\_repository) | Github Repository 명 | `string` | n/a | yes |
| <a name="input_github_username"></a> [github\_username](#input\_github\_username) | Github 계정 | `string` | n/a | yes |
| <a name="input_tfc_oauth_client"></a> [tfc\_oauth\_client](#input\_tfc\_oauth\_client) | OAuth Token ID 정보 확인을 위한 VCS 연결정보 | <pre>object({<br>    name             = string,<br>    api_url          = string,<br>    http_url         = string,<br>    service_provider = string<br>  })</pre> | <pre>{<br>  "api_url": "https://api.github.com",<br>  "http_url": "https://github.com",<br>  "name": "github-demo",<br>  "service_provider": "github"<br>}</pre> | no |
| <a name="input_tfc_oauth_token"></a> [tfc\_oauth\_token](#input\_tfc\_oauth\_token) | VCS Provider 연결을 위한 계정 Access token (ghp\_xxxx) | `string` | n/a | yes |
| <a name="input_tfc_terraform_version"></a> [tfc\_terraform\_version](#input\_tfc\_terraform\_version) | workspace에서 사용 할 Terraform Version | `string` | n/a | yes |
| <a name="input_tfc_workspaces_network"></a> [tfc\_workspaces\_network](#input\_tfc\_workspaces\_network) | demo infra의 Workspace 이름 | `map(any)` | n/a | yes |
| <a name="input_tfe_organization_name"></a> [tfe\_organization\_name](#input\_tfe\_organization\_name) | Terraform Organization 이름 | `string` | n/a | yes |
| <a name="input_tfe_organization_owner"></a> [tfe\_organization\_owner](#input\_tfe\_organization\_owner) | Terraform Organization 소유자 | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
