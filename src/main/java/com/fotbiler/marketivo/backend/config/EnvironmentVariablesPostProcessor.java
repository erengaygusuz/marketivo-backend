package com.fotbiler.marketivo.backend.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.env.EnvironmentPostProcessor;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Environment post processor to load .env files
 * This allows loading environment variables from files for local development
 */
public class EnvironmentVariablesPostProcessor implements EnvironmentPostProcessor {

    @Override
    public void postProcessEnvironment(ConfigurableEnvironment environment, SpringApplication application) {
        String activeProfile = System.getProperty("spring.profiles.active", "dev");

        // Try to load .env file based on active profile
        Resource envFile = new FileSystemResource(".env." + activeProfile);
        if (!envFile.exists()) {
            // Fallback to default .env file
            envFile = new FileSystemResource(".env");
        }

        if (!envFile.exists()) {
            // Try loading from classpath as fallback
            envFile = new ClassPathResource("application-" + activeProfile + ".properties");
        }

        if (envFile.exists()) {
            try {
                Properties props = new Properties();
                try (InputStream inputStream = envFile.getInputStream()) {
                    props.load(inputStream);
                }

                // Add the properties to Spring's environment with high priority
                environment.getPropertySources().addFirst(
                    new PropertiesPropertySource("envFile", props)
                );
            } catch (IOException e) {
                // Log warning but don't fail startup
                System.err.println("Warning: Could not load environment file: " + envFile.getFilename());
            }
        }
    }
}
