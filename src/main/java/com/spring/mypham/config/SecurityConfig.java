package com.spring.mypham.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCrypt;

import com.spring.mypham.SERVICEImpl.MyUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
//	@Configuration
//	@Order(1)
//	public static class App1ConfigurationAdapter extends WebSecurityConfigurerAdapter {
//	    public App1ConfigurationAdapter() {
//	        super();
//	    }
//	    @Autowired
//	    private MyUserDetailsService myUserDetailsService;
//	    @Autowired
//	    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//	   
//	        // Các User trong bộ nhớ (MEMORY).
//	  
//	        auth.inMemoryAuthentication().withUser("user1").password(BCrypt.hashpw("12345", BCrypt.gensalt(12))).roles("USER");
//	        auth.inMemoryAuthentication().withUser("admin1").password(BCrypt.hashpw("12345", BCrypt.gensalt(12))).roles("USER, ADMIN");
//	   
//	        // Các User trong Database
//	        auth.userDetailsService(myUserDetailsService);
//	  
//	    }
//	  
//	    @Override
//	    protected void configure(HttpSecurity http) throws Exception {
//	    	  http.authorizeRequests().antMatchers("/admin/j_spring_security_check_admin","/admin/quantricp").permitAll();
//	      
//	        http.antMatcher("/admin/*")
//	          .authorizeRequests()
//	          .anyRequest()
//	          .access("hasAnyRole('ROLE_ADMIN')")
//	          
//	          .and()
//
//	          .formLogin()
//	       // Submit URL của trang login
//	          .loginProcessingUrl("/j_spring_security_check_admin") // Submit URL
//	          .loginPage("/admin/quantricp")
//	          
//             
//	          .failureUrl("/admin/quantricp?error=loginError")
//	          .defaultSuccessUrl("/admin/quanlyuser")
//	          
//	          .and()
//	          .logout()
//	          .logoutUrl("/admin/logout")
//	          .logoutSuccessUrl("/admin/quantricp")
//	          .deleteCookies("JSESSIONID")
//	          
//	          .and()
//	          .exceptionHandling()
//	          .accessDeniedPage("/403")
//	          
//	          .and()
//	          .csrf().disable();
//	    }
//	}
//	
	@Configuration
	@Order(2)
	public static class App2ConfigurationAdapter extends WebSecurityConfigurerAdapter {

	    public App2ConfigurationAdapter() {
	        super();
	    }
	    
	    @Autowired
	    private MyUserDetailsService myUserDetailsService;
	    @Autowired
	    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	   
	        // Các User trong bộ nhớ (MEMORY).
	  
	        auth.inMemoryAuthentication().withUser("user1").password(BCrypt.hashpw("12345", BCrypt.gensalt(12))).roles("USER");
	        auth.inMemoryAuthentication().withUser("admin1").password("12345").roles("USER, ADMIN");
	   
	        // Các User trong Database
	        auth.userDetailsService(myUserDetailsService);
	  
	    }
	  

	    protected void configure(HttpSecurity http) throws Exception {
	    	// Các trang không yêu cầu login
	        http.authorizeRequests().antMatchers("/", "/login","/logout","/trangchu","/admin/quantricp").permitAll();
	    	
	     // Trang /userInfo yêu cầu phải login với vai trò USER hoặc ADMIN.
	        // Nếu chưa login, nó sẽ redirect tới trang /login.
	        http.authorizeRequests().antMatchers("/account").access("hasAnyRole('ROLE_USER')");
	        http.authorizeRequests().antMatchers("/admin/*").access("hasAnyRole('ROLE_ADMIN')");
	        
	        // Cấu hình cho Login Form.
	        http.authorizeRequests().and().formLogin()//
	      
	                // Submit URL của trang login
	                .loginProcessingUrl("/j_spring_security_check") // Submit URL
	                .loginPage("/login")//
	                .defaultSuccessUrl("/trangchu")//
	                .failureUrl("/login?error=true")//
	                .usernameParameter("username")//
	                .passwordParameter("password")
	                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/login")
	                //login page admin
	                .and()
	                .formLogin()//
	                .loginProcessingUrl("/j_spring_security_check_admin") // Submit URL
	                .loginPage("/admin/quantricp")//
	                .defaultSuccessUrl("/admin/quanlyuser")//
	                .failureUrl("/admin/quantricp?error=true")//
	                .usernameParameter("username")//
	                .passwordParameter("password")
	                // Cấu hình cho Logout Page.
	                .and().logout().logoutUrl("/admin/logout").logoutSuccessUrl("/admin/quantricp").and().csrf().disable();
	        

	    }
	}

}