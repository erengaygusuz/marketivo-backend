package com.fotbiler.marketivo.backend.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Data
@Component
@ConfigurationProperties(prefix = "app")
@ConfigurationPropertiesScan
public class AppProperties {

    private final Database database = new Database();
    private final Security security = new Security();
    private final Stripe stripe = new Stripe();
    private final Server server = new Server();

    @Data
    public static class Database {
        private String url = "${DB_URL:jdbc:mysql://localhost:3306/marketivo}";
        private String username = "${DB_USERNAME:marketivo_user}";
        private String password = "${DB_PASSWORD:password}";
        private String driverClassName = "${DB_DRIVER:com.mysql.cj.jdbc.Driver}";

        private final Hikari hikari = new Hikari();

        @Data
        public static class Hikari {
            private int maximumPoolSize = 5;
            private int minimumIdle = 2;
            private long idleTimeout = 30000;
            private long maxLifetime = 1800000;
            private long connectionTimeout = 30000;
        }
    }

    @Data
    public static class Security {
        private String[] allowedOrigins = {Arrays.toString("${ALLOWED_ORIGINS:http://localhost:4200}".split(","))};
        private final Okta okta = new Okta();

        @Data
        public static class Okta {
            private String issuer = "${OKTA_ISSUER:}";
            private String clientId = "${OKTA_CLIENT_ID:}";
            private String audience = "${OKTA_AUDIENCE:}";
        }
    }

    @Data
    public static class Stripe {
        private String secretKey = "${STRIPE_SECRET_KEY:}";
    }

    @Data
    public static class Server {
        private int port = 8080;
        private String basePath = "${API_BASE_PATH:/api}";
    }
}
