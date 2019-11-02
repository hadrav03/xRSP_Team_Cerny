package com.javainuse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TestController {

	@RequestMapping("/welcome.html")
	public ModelAndView firstPage() {
		return new ModelAndView("WEB-INF/views/welcome.jsp");
	}
	
	@RequestMapping("/hello")
	public String index() {
		return "Spring Boot Exampleeeeee!!";
	}
	@RequestMapping("/loginprocess")
	public ModelAndView login() {
		return new ModelAndView("WEB-INF/views/loginprocess.jsp") ;
	}

}