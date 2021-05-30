package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@Controller
@ControllerAdvice
public class ExceptionHandling {
	@ExceptionHandler(value = {NoHandlerFoundException.class})
	public String exceptionHandler(Exception exception) {	
		return "exception";
	}
}
