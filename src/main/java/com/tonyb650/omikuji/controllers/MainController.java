package com.tonyb650.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class MainController {
	
	@RequestMapping("")
	public String form() {
//		System.out.println("entered form");
		return "form.jsp";
	}
	
	@PostMapping("/submit")
	public String submit(
			@RequestParam(value="num") String num,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="profession") String profession,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="nice") String nice,
			HttpSession session ) {
		// get values from form and put in session
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("profession", profession);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
//		System.out.println("entered submit");
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/show")
	public String show() {
//		System.out.println("entered show");
		return "show.jsp";
	}
}
