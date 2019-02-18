workspace(name = "dotnet_hardlink_bug")

http_archive(
    name = "bazel_toolchains",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/708cd19a7535fbdac5c8be71deb24d575319c094.tar.gz",
        "https://github.com/bazelbuild/bazel-toolchains/archive/708cd19a7535fbdac5c8be71deb24d575319c094.tar.gz",
    ],
    strip_prefix = "bazel-toolchains-708cd19a7535fbdac5c8be71deb24d575319c094",
    sha256 = "4329663fe6c523425ad4d3c989a8ac026b04e1acedeceb56aa4b190fa7f3973c",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "io_bazel_rules_dotnet",
    remote = "https://github.com/bazelbuild/rules_dotnet",
	commit = "4a255eefbe099e2b3cd665baa407617fa27b6ad9",
)

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "mono_register_sdk", "dotnet_register_toolchains", "dotnet_repositories")

dotnet_register_toolchains()
dotnet_repositories()
mono_register_sdk()
