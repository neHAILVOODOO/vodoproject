package com.voodoo.vodoproject.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class EncryptionConfig {

    @Bean
    public static PasswordEncoder getPasswordEncoder() {
        return new MessageDigestPasswordEncoder("MD5");
    }
}
