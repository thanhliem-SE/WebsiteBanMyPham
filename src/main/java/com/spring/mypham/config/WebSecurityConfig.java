package com.spring.mypham.config;
 
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.SERVICEImpl.MyUserDetailsService;
 
@Configuration
@EnableWebSecurity
@Transactional
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
 
  
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
 
   @Override
   protected void configure(HttpSecurity http) throws Exception {
 
       http.csrf().disable();
 
  
       // Các trang không yêu cầu login
       http.authorizeRequests().antMatchers("/", "/login","logout","/logout","/trangchu").permitAll();
  
       // Trang /userInfo yêu cầu phải login với vai trò USER hoặc ADMIN.
       // Nếu chưa login, nó sẽ redirect tới trang /login.
		/*
		 * http.authorizeRequests().antMatchers("/checkout").
		 * access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
		 */

		 http.authorizeRequests().antMatchers("/checkout").access("hasAnyRole('USER', 'ADMIN')");
		 
       // Trang chỉ dành cho ADMIN
       http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
  
       // Khi người dùng đã login, với vai trò XX.
       // Nhưng truy cập vào trang yêu cầu vai trò YY,
       // Ngoại lệ AccessDeniedException sẽ ném ra.
       http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
  
       // Cấu hình cho Login Form.
       http.authorizeRequests().and().formLogin()//
     
               // Submit URL của trang login
               .loginProcessingUrl("/j_spring_security_check") // Submit URL
               .loginPage("/login")//
               .defaultSuccessUrl("/")//
               .failureUrl("/login?error=true")//
               .usernameParameter("username")//
               .passwordParameter("password")
            
               // Cấu hình cho Logout Page.
               .and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");
 
   }
}
