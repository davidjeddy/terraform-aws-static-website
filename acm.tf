module "acm_request_certificate" {
  source  = "cloudposse/acm-request-certificate/aws"
  version = "0.16.3"

  domain_name = var.domain_name
  name        = local.name
  zone_id     = aws_route53_zone.this.zone_id

  subject_alternative_names = [
    "*.${var.domain_name}"
  ]
}
