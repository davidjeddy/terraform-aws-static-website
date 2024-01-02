# Eddy Enterprises - IAC - AWS - Static Website

## Table of Contents

- [Eddy Enterprises - IAC - AWS - Static Website](#eddy-enterprises---iac---aws---static-website)
  - [Table of Contents](#table-of-contents)
  - [Badges](#badges)
  - [Description](#description)
  - [Design / Tools](#design--tools)
  - [Purpose](#purpose)
  - [Contributing](#contributing)
    - [Code of Conduct](#code-of-conduct)
    - [Contributing Guidelines](#contributing-guidelines)
    - [Development Documentation](#development-documentation)
  - [RoadMap](#roadmap)
  - [Requirements](#requirements)
  - [Runbook](#runbook)
  - [Usage](#usage)
    - [Download](#download)
    - [Execute](#execute)
  - [Versioning](#versioning)
  - [Contributors](#contributors)
  - [Additional Information](#additional-information)
  - [Requirements](#requirements-1)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)

## Badges

Build Status, Code Coverage, PR stats/time frame, Project status, etc.

## Description

Host static website content via AWS serverless features.

## Design / Tools

- [AWS](https://aws.amazon.com/)
- [Git](https://git-scm.com/)
- [Terraform](https://www.terraform.io/) / [OpenTofu](https://opentofu.org/)

## Purpose

Affordable, Secure, performant static website hosting via cloud serverless solution.

## Contributing

### Code of Conduct

Please see [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md).

### Contributing Guidelines

Please see [CONTRIBUTING_GUIDELINES.md](./CONTRIBUTING_GUIDELINES.md).

### Development Documentation

Please see [DEVELOPMENT.md](./DEVELOPMENT.md).

## RoadMap

Upcoming planned project changes and feature adds.

[./ROADMAP.md](./ROADMAP.md)

## Requirements

- [POSIX terminal](https://en.wikipedia.org/wiki/POSIX_terminal_interface) and a shell
- [Git](https://git-scm.com/)
- [AWS CLI](https://aws.amazon.com/cli/)
  - [IAM user API id and key](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
  - [IAM user with permissions](./libs/iam_user_policy.json)
- [Terraform](https://www.terraform.io/) >=1.1.6 / [OpenTofu](https://www.opentofu.org/) >= rc1

## Runbook

A collection of errors and corrective actions within the scope of this project.

[./RUNBOOK](./RUNBOOK.md)

## Usage

### Download

```sh
git clone https://github.com/Eddy-Enterprises/iac_toolchain
```

### Execute

See [./examples/](./examples/) for usage of shared modules.

## Versioning

This project follows [SemVer 2.0](https://semver.org/) tagging pattern.

```quote
Given a version number MAJOR.MINOR.PATCH, increment the:

1. MAJOR version when you make incompatible API changes,
2. MINOR version when you add functionality in a backwards compatible manner, and
3. PATCH version when you make backwards compatible bug fixes.

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
```

## Contributors

## Additional Information

- [Changelog](https://github.com/olivierlacan/keep-a-changelog)
- [Code of Conduct](https://github.com/github/opensource.guide/tree/main)

- Adding visual aids to any / all the above sections above is recommended.
- [Contributes](##Contributors) sources from [all-contributors](https://github.com/all-contributors/all-contributors).
- [ROADMAP](./ROADMAP.md) example from [all-contributors/all-contributors](https://github.com/all-contributors/all-contributors/blob/master/MAINTAINERS.md).
- Based on [README Maturity Model](https://github.com/LappleApple/feedmereadmes/blob/master/README-maturity-model.md); strive for a Level 5 `Product-oriented README`.
- This Code of Conduct is adapted from the [Contributor Covenant](https://www.contributor-covenant.org), version 2.0, available at https://www.contributor-covenant.org/version/2/0/code_of_conduct.html.
- [CONTRIBUTING.md](./CONTRIBUTING.md) is based on the [Ruby on Rails Contributing](https://github.com/rails/rails/blob/master/CONTRIBUTING.md) document, credit is due to them.
- [LICENSE](./LICENSE.md) sources from:
  - [https://choosealicense.com](https://choosealicense.com)
  - [https://en.wikipedia.org/wiki/All_rights_reserved](https://en.wikipedia.org/wiki/All_rights_reserved)
- [SECURITY.md](./SECURITY.md) based from [ISARA Radiate Security Solution Suite 2.0 Security Issues](https://github.com/isaracorp/Toolkit-Samples/edit/master/SECURITY.md).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |
| <a name="requirement_awsutils"></a> [awsutils](#requirement\_awsutils) | >= 0.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |
| <a name="provider_awsutils"></a> [awsutils](#provider\_awsutils) | 0.18.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm_request_certificate"></a> [acm\_request\_certificate](#module\_acm\_request\_certificate) | cloudposse/acm-request-certificate/aws | 0.16.3 |
| <a name="module_cloudfront"></a> [cloudfront](#module\_cloudfront) | cloudposse/cloudfront-s3-cdn/aws | 0.92.0 |
| <a name="module_route53_query_logging"></a> [route53\_query\_logging](#module\_route53\_query\_logging) | trussworks/route53-query-logs/aws | ~> 4.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.route_53_dnssec](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_route53_hosted_zone_dnssec.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_hosted_zone_dnssec) | resource |
| [aws_route53_key_signing_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_key_signing_key) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_s3_object.font_ttf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.font_woff](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.font_woff2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.image_ico](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.images_gif](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.images_jpg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.images_png](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.javascripts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.styles_css](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.text_html](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [awsutils_default_vpc_deletion.this](https://registry.terraform.io/providers/cloudposse/awsutils/latest/docs/resources/default_vpc_deletion) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acct_id"></a> [acct\_id](#input\_acct\_id) | (required) AWS account ID | `number` | n/a | yes |
| <a name="input_delete_timeout"></a> [delete\_timeout](#input\_delete\_timeout) | (optional) Amount of time to wait before deleting resources such as logs or KMS keys | `number` | `7` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | (optional) Delimiter character | `string` | `"-"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | (required) Domain of the project | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (required) Project name. Use the same delimiter as `var.delimiter` | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (required) Owning organization short name | `string` | n/a | yes |
| <a name="input_random_string"></a> [random\_string](#input\_random\_string) | (required) Entropy string to prevent naming collisions | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (required) AWS region to deploy resources into | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | (required) The stage; aka environment | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (required) Default tags | `map(any)` | n/a | yes |
| <a name="input_web_path"></a> [web\_path](#input\_web\_path) | (optional) Relative path to website assets | `string` | `"../../../../../website"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
