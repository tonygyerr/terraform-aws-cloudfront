output "oai_principal_arn" {
  value = "${aws_cloudfront_origin_access_identity.this.iam_arn}"
}


output "cfd_domain_name" {
  value = "${aws_cloudfront_distribution.this.domain_name}"
}

output "cfd_hosted_zone_id" {
  value = "${aws_cloudfront_distribution.this.hosted_zone_id}"
}
