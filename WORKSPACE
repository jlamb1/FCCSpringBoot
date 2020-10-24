workspace(name = "com_jlamb")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "3.3"

http_archive(
    name = "rules_jvm_external",
    sha256 = "d85951a92c0908c80bd8551002d66cb23c3434409c814179c0ff026b53544dab",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("//:dependencies.bzl", "maven_dependencies")

maven_dependencies()

load("@maven//:defs.bzl", "pinned_maven_install")

pinned_maven_install()

BUILDTOOLS_TAG = "3.5.0"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "f5b666935a827bc2b6e2ca86ea56c796d47f2821c2ff30452d270e51c2a49708",
    strip_prefix = "buildtools-%s" % BUILDTOOLS_TAG,
    url = "https://github.com/bazelbuild/buildtools/archive/%s.zip" % BUILDTOOLS_TAG,
)

http_archive(
    name = "bazel_skylib",
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()
