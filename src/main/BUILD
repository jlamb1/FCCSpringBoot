load("@rules_java//java:defs.bzl", "java_binary", "java_library")

java_library(
    name = "lib",
    srcs = glob([
        "java/com/jlamb/bootcamp/*.java",
        "java/com/jlamb/bootcamp/**/*.java",
    ]),
    resources = [
        "resources/application.yml",
        "resources/db/migration/V1__PersonTable.sql",
    ],
    visibility = ["//src/test:__subpackages__"],
    deps = [
        "@maven//:com_fasterxml_jackson_core_jackson_annotations",
        "@maven//:com_zaxxer_HikariCP",
        "@maven//:javax_validation_validation_api",
        "@maven//:org_flywaydb_flyway_core",
        "@maven//:org_postgresql_postgresql",
        "@maven//:org_springframework_boot_spring_boot",
        "@maven//:org_springframework_boot_spring_boot_autoconfigure",
        "@maven//:org_springframework_boot_spring_boot_starter_jdbc",
        "@maven//:org_springframework_boot_spring_boot_starter_web",
        "@maven//:org_springframework_spring_beans",
        "@maven//:org_springframework_spring_context",
        "@maven//:org_springframework_spring_jdbc",
        "@maven//:org_springframework_spring_web",
    ],
)

java_binary(
    name = "app",
    main_class = "com.jlamb.bootcamp.BootcampApplication",
    runtime_deps = [
        ":lib",
    ],
)
