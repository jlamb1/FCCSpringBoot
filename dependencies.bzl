load("@rules_jvm_external//:defs.bzl", "maven_install")

def maven_dependencies():
    maven_install(
        artifacts = [
            "org.springframework.boot:spring-boot-starter-web:2.4.0-M4",
            "org.springframework.boot:spring-boot-autoconfigure:2.4.0-M4",
            "org.springframework.boot:spring-boot:2.4.0-M4",
            "org.springframework:spring-web:5.2.9.RELEASE",
            "javax.validation:validation-api:2.0.1.Final",
            "com.fasterxml.jackson.core:jackson-annotations:2.11.3",
            "org.springframework:spring-context:5.2.9.RELEASE",
            "org.springframework.boot:spring-boot-starter-jdbc:2.4.0-M4",
            "org.postgresql:postgresql:42.2.18",
            "org.flywaydb:flyway-core:7.0.4",
            "com.zaxxer:HikariCP:3.4.5",
            "org.springframework:spring-jdbc:5.2.9.RELEASE",
        ],
        repositories = [
            "https://jcenter.bintray.com/",
            "https://maven.google.com",
            "https://repo.spring.io/milestone",
        ],
        maven_install_json = "@com_jlamb//:maven_install.json",
    )
