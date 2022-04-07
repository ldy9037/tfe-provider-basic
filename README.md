# ldy9037/tfe-provider-basic

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

tfe provider를 활용해서  terraform cloud 기본 구성

##### 좋은 commit message 작성을 위한 참고자료

- [commit message 작성 규칙](https://meetup.toast.com/posts/106)
- [commit naming](https://blog.ull.im/engineering/2019/03/10/logs-on-git.html)


## Table of Contents

- [소개](#intro)
- [시작하기](#install)
- [주의사항](#precautions)
- [제작자](#producer)

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

## 주의사항
-


## 제작자
[ldy9037@naver.com]()

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.21.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
