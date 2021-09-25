variable "bucket_name" {
  description = "development name of the bucket that will use as origin for CDN"
  default     = ""
}


variable "retain_on_delete" {
  description = "Instruct CloudFront to simply disable the distribution instead of delete"
  default     = false
}

variable "price_class" {
  description = "Price classes provide you an option to lower the prices you pay to deliver content out of Amazon CloudFront"
  default     = "PriceClass_100"
}

variable "Cert1" {
  default = ""
}

variable "oai_principal_arn" {
  type = string
}

variable "application" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}

variable "region" {
  description = "ec2 region for the vpc"
  type        = string
  default     = ""
}

variable "cfd_domain_name" {
  type    = string
  default = ""
}

variable "cfd_hosted_zone_id" {
  type    = string
  default = ""
}

variable "tags" {
  type        = map(string)
  description = "optional tags"

  # default = {
  #   name        = ""
  #   owner       = ""
  #   costcenter  = ""
  #   environment = ""
  #   project     = ""
  # }
}