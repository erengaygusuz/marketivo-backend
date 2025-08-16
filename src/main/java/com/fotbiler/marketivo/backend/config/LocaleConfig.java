package com.fotbiler.marketivo.backend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class LocaleConfig {
    @Bean
    public org.springframework.web.servlet.LocaleResolver localeResolver() {
        var r = new org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver();
        r.setDefaultLocale(java.util.Locale.US);
        return r;
    }
}
