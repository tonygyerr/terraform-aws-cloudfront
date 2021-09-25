# Terraform init Build Targets
filegroup(
    labels = [
        "cloudfront",
        "deploy",
        "plan",
    ],
    name = "cloudfront_pkg",
    srcs = glob([
        "*.tf",
        "commands/*.sh",
        "env-config/*.tfvars",
        "examples/*.tf",
        "policy/*.json",
    ]),
)

# commands
sh_binary(
    labels = [
        "cloudfront",
    ],
    deps = [
        ":cloudfront_pkg",
    ],
    main = "commands/destroy.sh",
    name = "destroy_exe",
)

sh_binary(
    labels = [
        "cloudfront",
    ],
    deps = [
        ":cloudfront_pkg",
    ],
    main = "commands/plan.sh",
    name = "plan_exe",
)

sh_binary(
    labels = [
        "cloudfront",
    ],
    deps = [
        ":cloudfront_pkg",
    ],
    main = "commands/apply.sh",
    name = "apply_exe",
)