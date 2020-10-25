load("@rules_jvm_external//:defs.bzl", "maven_install")

def maven_dependencies():
    maven_install(
        artifacts = [
            "org.springframework.boot:spring-boot-starter-parent:2.1.17.RELEASE",
            "org.springframework.boot:spring-boot-starter-web:2.1.17.RELEASE",
            "org.springframework.boot:spring-boot-starter-test:2.1.17.RELEASE",
            "org.springframework.boot:spring-boot-maven-plugin:2.1.17.RELEASE",
            "org.springframework.boot:spring-boot-autoconfigure:2.1.17.RELEASE",
            "org.springframework.boot:spring-boot:2.1.17.RELEASE",
            "org.springframework:spring-web:5.2.9.RELEASE",
            "org.springframework:spring-beans:5.2.9.RELEASE",
            "javax.validation:validation-api:2.0.1.Final",
            "com.fasterxml.jackson.core:jackson-annotations:2.11.3",
            "org.springframework:spring-context:5.2.9.RELEASE",
            "org.springframework.boot:spring-boot-starter-jdbc:2.1.17.RELEASE",
            "org.postgresql:postgresql:42.2.18",
            "org.flywaydb:flyway-core:5.2.4",
            "com.zaxxer:HikariCP:3.4.5",
            "org.springframework:spring-jdbc:5.1.10.RELEASE",
        ],
        repositories = [
            "https://jcenter.bintray.com/",
            "https://maven.google.com",
        ],
        maven_install_json = "@com_jlamb//:maven_install.json",
    )
