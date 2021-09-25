output "oai_principal_arn" {
  value = "${module.cf.oai_principal_arn}"
}

output "cfd_domain_name" {
  value = "${module.cf.cfd_domain_name}"
}

output "cfd_hosted_zone_id" {
  value = "${module.cf.cfd_hosted_zone_id}"
}
