package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	// need a controller method to show the initial HTML form	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	// need a controller method to process the HTML form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	// new controller method to read form data and add data to the model
	@RequestMapping("/processFormVersionTwo")	
	public String letsShoutDude(HttpServletRequest request, Model model) {
		// read the request parameter from the html form
		String studentName = request.getParameter("studentName");
		
		// convert the data to all caps
		studentName = studentName.toUpperCase();
		
		// create the message
		String result = "Yo! HELLO " + studentName;
		
		// add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")	
	public String processFormVersionThree(
			@RequestParam("studentName") String studentName, Model model) {
		
		// convert the data to all caps
		studentName = studentName.toUpperCase();
		
		// create the message
		String result = "Hey my friend from V3! " + studentName;
		
		// add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
	}	
}
