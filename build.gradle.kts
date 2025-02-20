plugins {
    id("java")
    id("org.liquibase.gradle") version "2.2.0"
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    runtimeOnly("org.liquibase:liquibase-core:4.24.0")
    runtimeOnly("org.liquibase:liquibase-groovy-dsl:2.1.1")
    runtimeOnly("info.picocli:picocli:4.7.5")
    runtimeOnly("org.yaml:snakeyaml:1.33")
    runtimeOnly("org.postgresql:postgresql:42.7.1")
}

tasks.test {
    useJUnitPlatform()
}
