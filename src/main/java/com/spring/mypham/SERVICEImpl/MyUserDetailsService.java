package com.spring.mypham.SERVICEImpl;


import java.util.ArrayList;
import java.util.List;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.UserDAO;
 
@Service
public class MyUserDetailsService implements UserDetailsService {
	BCryptPasswordEncoder encoder = passwordEncoder();
    @Autowired
    private UserDAO userInfoDAO;
 
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        com.spring.mypham.models.User userInfo = userInfoDAO.getLoginInfoByUsername(username);
       // System.out.println("UserInfo= " + userInfo);
 
        if (userInfo == null) {
            throw new UsernameNotFoundException("User " + username + " was not found in the database");
        }
         
        // [USER,ADMIN,..]
        List<String> roles= userInfoDAO.getUserRoles(username);
         
        List<GrantedAuthority> grantList= new ArrayList<GrantedAuthority>();
        if(roles!= null)  {
            for(String role: roles)  {
                // ROLE_USER, ROLE_ADMIN,..
                GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
                grantList.add(authority);
            }
        }        
         
        UserDetails userDetails = (UserDetails) new User(userInfo.getUsername(), //
                userInfo.getPassword(),grantList);
 
        return userDetails;
    }
     
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}