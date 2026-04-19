module "this" {
  source = "../../../shared/windblows"

  # DNS

  domain_name = join("", [var.name, "usa.com"])

  # Generics

  acct_id       = var.acct_id
  name          = var.name
  namespace     = var.namespace
  random_string = var.random_string
  region        = var.region
  stage         = var.stage
  tags          = var.tags

  # Providers

  providers = {
    aws      = aws.us-east-1 # For Route53 DNS query logging
    awsutils = awsutils      # Delete default VPC - https://github.com/cloudposse/terraform-provider-awsutils
  }
}
