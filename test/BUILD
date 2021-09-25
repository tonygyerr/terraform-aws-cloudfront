# Test Files
go_test(
    name = "cloudfront_pkg_test",
    srcs = glob([
        "*.go",
    ]),
    data = ["//terraform/modules/cloudfront:cloudfront_pkg"],
    visibility = ["PUBLIC"],
    deps = [
        "//third_party/go:terratest",
        "//third_party/go:testify",
    ]
)