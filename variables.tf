# Optionals

## Generics

variable "delete_timeout" {
  default     = 7
  description = "(optional) Amount of time to wait before deleting resources such as logs or KMS keys"
  type        = number
}

variable "delimiter" {
  default     = "-"
  description = "(optional) Delimiter character"
  type        = string
}

## WebApp

variable "web_path" {
  default     = "../../../../../website"
  description = "(optional) Relative path to website assets"
  type        = string
}

# Required

## Generics

variable "acct_id" {
  description = "(required) AWS account ID"
  type        = number
}

variable "name" {
  description = "(required) Project name. Use the same delimiter as `var.delimiter`"
  type        = string
}

variable "namespace" {
  description = "(required) Owning organization short name"
  type        = string
}

variable "random_string" {
  description = "(required) Entropy string to prevent naming collisions"
  type        = string
}

variable "region" {
  description = "(required) AWS region to deploy resources into"
  type        = string
}

variable "stage" {
  description = "(required) The stage; aka environment"
  type        = string
}

variable "tags" {
  description = "(required) Default tags"
  type        = map(any)
}

## DNS

variable "enabled_dnssec" {
  default = true
  description = "(optional) DNSSEC feature toggle. Disable when using a delegated domain."
  type = bool
}

variable "domain_name" {
  description = "(required) Domain of the project"
  type        = string
}
