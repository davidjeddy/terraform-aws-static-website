# Required

## Generics

variable "acct_id" {
  default     = 788793561767
  description = "(required) AWS account ID"
  type        = number
}

variable "name" {
  default     = "windblows"
  description = "(required) Project name. Use the same delimiter as `var.delimiter`"
  type        = string
}

variable "namespace" {

  description = "(required) Owning organization short name"
  type        = string
}

variable "random_string" {
  default     = "nmdp"
  description = "(required) Entropy string to uniquely the deployment"
  type        = string
}

variable "region" {
  default     = "us-east-1"
  description = "(required) AWS region to deploy resources into"
  type        = string
}

variable "stage" {
  default     = "prd"
  description = "(required) The stage; aka environment"
  type        = string
}

variable "tags" {
  default = {
    Contact = "pheagey+windblows@gmail.com"
    Name    = "ee-windblows-prd-nmdp"
    Owner   = "Eddy Enterprises"
    Version = "0.0.1"
  }
  description = "(required) Default tags"
  type        = map(any)
}
