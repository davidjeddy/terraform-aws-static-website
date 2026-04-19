module "cloudfront" {
  depends_on = [
    module.acm_request_certificate # Need the ACM TLS cert created first
  ]
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "0.92.0"

  acm_certificate_arn = module.acm_request_certificate.arn
  name                = local.name
  parent_zone_id      = aws_route53_zone.this.zone_id

  cloudfront_access_log_create_bucket = true

  dns_alias_enabled        = true
  encryption_enabled       = true
  geo_restriction_type     = "none"
  minimum_protocol_version = "TLSv1.2_2021"
  origin_force_destroy     = true
  viewer_protocol_policy   = "redirect-to-https"
  wait_for_deployment      = false

  aliases = [
    var.domain_name,
    "*.${var.domain_name}"
  ]
}
