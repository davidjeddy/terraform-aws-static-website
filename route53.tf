resource "aws_route53_zone" "this" {
  name = var.domain_name
}

resource "aws_route53_key_signing_key" "this" {
  hosted_zone_id             = aws_route53_zone.this.id
  key_management_service_arn = aws_kms_key.route_53_dnssec.arn
  name                       = local.name
}

resource "aws_route53_hosted_zone_dnssec" "this" {
  depends_on = [
    aws_route53_key_signing_key.this
  ]

  hosted_zone_id = aws_route53_key_signing_key.this.hosted_zone_id
}

module "route53_query_logging" {
  source  = "trussworks/route53-query-logs/aws"
  version = "~> 4.0.0"

  providers = {
    aws.us-east-1 = aws
  }

  logs_cloudwatch_retention = var.delete_timeout
  zone_id                   = aws_route53_zone.this.zone_id
}