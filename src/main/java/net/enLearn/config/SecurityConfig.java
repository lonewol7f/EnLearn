package net.enLearn.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

/**
 * Created by Kalana on 09/09/2021
 */

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("SELECT email,password,enabled " +
                        "FROM user " +
                        "WHERE email = ?")
                .authoritiesByUsernameQuery("SELECT user.email, authorities.authority " +
                        "FROM authorities, user, user_authorities " +
                        "WHERE user.email = ? " +
                        "AND user.id = user_authorities.user_id " +
                        "AND user_authorities.authority_id = authorities.id")
                .passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/students/**").hasRole("STUDENT")
                .antMatchers("/admins/**").hasRole("ADMIN")
                .antMatchers("/teachers/**").hasRole("TEACHER")
                .antMatchers("/reports/single-event/**").hasRole("TEACHER")
                .antMatchers("/reports/available-codes/**").hasRole("ADMIN")
                .and()
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/authenticateTheUser")
                .permitAll();

    }
}
