module "cf" {
  source             = "git::https://github.com/tonygyerr/terraform-aws-cloudfront.git"
  oai_principal_arn  = var.oai_principal_arn
  cfd_domain_name    = var.cfd_domain_name
  cfd_hosted_zone_id = var.cfd_hosted_zone_id
  application        = var.application
  environment        = var.environment
  region             = var.aws_region
  tags               = var.tas
}
