# DNSSEC
resource "aws_kms_key" "route_53_dnssec" {
  count = var.enabled_dnssec ? 1 : 0
  
  customer_master_key_spec = "ECC_NIST_P256"
  deletion_window_in_days  = var.delete_timeout
  key_usage                = "SIGN_VERIFY"

  policy = jsonencode({
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        }
        Resource = "*"
        Sid      = "Enable IAM User Permissions"
      },
      {
        Action = [
          "kms:DescribeKey",
          "kms:GetPublicKey",
          "kms:Sign",
          "kms:Verify",
        ],
        Effect = "Allow"
        Principal = {
          Service = "dnssec-route53.amazonaws.com"
        }
        Resource = "*"
        Sid      = "Allow Route 53 DNSSEC Service",
      }
    ]
    Version = "2012-10-17"
  })
}