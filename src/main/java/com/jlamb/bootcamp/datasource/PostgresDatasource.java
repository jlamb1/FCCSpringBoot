package com.jlamb.bootcamp.datasource;


import com.zaxxer.hikari.HikariDataSource;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class PostgresDatasource {

    @Bean
    @ConfigurationProperties("app.datasource")
    public HikariDataSource hikariDatasource() {
        return DataSourceBuilder
                .create()
                .type(HikariDataSource.class)
                .password("password") // TODO: fix
                .build();
    }
}
