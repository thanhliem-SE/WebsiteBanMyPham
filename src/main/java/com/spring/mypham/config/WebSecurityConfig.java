package com.spring.mypham.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		/* auth.authenticationProvider(authenticationProvider()); */
		auth.inMemoryAuthentication().withUser("admin").password("1").roles("ADMIN");
/*				.password(passwordEncoder().encode("user2Pass")).roles("USER").and().withUser("admin")
				.password(passwordEncoder().encode("adminPass")).roles("ADMIN");*/
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				// .antMatchers("/user/**").hasRole("USER")
				.antMatchers("/admin/**").hasRole("ADMIN").and().formLogin().loginPage("/showFormLogin").loginProcessingUrl("/login").defaultSuccessUrl("/").and().logout().permitAll();
				/*.usernameParameter("username").passwordParameter("password")
				.defaultSuccessUrl("/").and().logout().permitAll();*/

	}

	@Override
	public void configure(WebSecurity web) {
		web.ignoring().antMatchers("/resources/**");
	}
	/*
	 * @Bean public BCryptPasswordEncoder passwordEncoder() { return new
	 * BCryptPasswordEncoder(); }
	 * 
	 * @Bean public DaoAuthenticationProvider authenticationProvider() {
	 * DaoAuthenticationProvider auth = new DaoAuthenticationProvider();
	 * auth.setUserDetailsService(nguoiDungService);
	 * auth.setPasswordEncoder(passwordEncoder()); return auth; }
	 */
}
