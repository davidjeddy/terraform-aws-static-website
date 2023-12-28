# Eddy Enterprises AWS Hosted Static Website

AWS hosted static website leveraging CloudPosse and TrussWorks modules. Includes DNSSEC, DNS query logging, TLS, and S3 bucket access logging.

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
