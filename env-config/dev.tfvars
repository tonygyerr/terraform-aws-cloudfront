#--------------------------------------------------------------
# general
#--------------------------------------------------------------

region      = "us-east-2"
environment = "dev"
application = "mobile"
owner       = "user@emailaddress.com"
aws_profile = "default"

#--------------------------------------------------------------
# cloudfront
#--------------------------------------------------------------
Cert1 = ""

#--------------------------------------------------------------
# s3
#--------------------------------------------------------------
bucket_name = "app-dev"

tags = {
  Owner       = "app"
  Environment = "dev"
  Name        = "app-cloudfront-iac"
  Region      = "us-east-1"
  CostCenter  = "app"
}